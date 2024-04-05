using System.Collections;
using Magicite.Managers;
using Unity.Netcode;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace BD.Bootstrap
{
    public class Bootstrap : MonoBehaviour
    {
        [SerializeField] private LoadingScreenDisplay _loadingScreenDisplay;

        private void Start()
        {
            LoadingScreenDisplay.instance = _loadingScreenDisplay;
            StartCoroutine(Validate());
        }


        private IEnumerator Validate()
        {
            yield return null;

            // In a real validate method we would check the state of any dependent systems or integrations such as Steam and make sure we have loaded any required data such as system settings

            Debug.Log("Loading the title scene!");

            // When ready would load the title scene, which we can do by index since we know its the second scene in the build. This is much faster than loading by name

            //Show the loading screen
            LoadingScreenDisplay.Progress = 0;
            LoadingScreenDisplay.Showing = true;

            // TODO:  Caleb, the bootstrap scene should load into the main title screen, this is loading into the test scene just for now.

            NetworkManager.Singleton.StartHost(); // TODO:  Caleb, this is starting the server as host.  Only for testing.

            var operation = SceneManager.LoadSceneAsync((int)MagiciteScene.TestScene, LoadSceneMode.Additive);
            // Tell unity to activate the scene soon as its ready
            operation.allowSceneActivation = true;

            // While the title scene is loading update the progress
            while (!operation.isDone)
            {
                //Loading the title scene
                LoadingScreenDisplay.Progress = operation.progress;
                yield return new WaitForEndOfFrame();
            }

            //The title scene is now loaded and its logic should be starting
            LoadingScreenDisplay.Progress = 1f;

            Scene scene = SceneManager.GetSceneByBuildIndex((int)MagiciteScene.TestScene);
            SceneManager.SetActiveScene(scene);
        }
    }
}
