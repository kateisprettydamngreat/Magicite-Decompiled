using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Boo.Lang;
using UnityEngine;

[Serializable]
public class ScourgeScript : EnemyScript
{
	[Serializable]
	[CompilerGenerated]
	internal sealed class _0024Attack_00242353 : GenericGenerator<WaitForSeconds>
	{
		[Serializable]
		[CompilerGenerated]
		internal sealed class _0024 : GenericGeneratorEnumerator<WaitForSeconds>, IEnumerator
		{
			internal ScourgeScript _0024self__00242354;

			public _0024(ScourgeScript self_)
			{
				_0024self__00242354 = self_;
			}

			public override bool MoveNext()
			{
				//IL_0032: Unknown result type (might be due to invalid IL or missing references)
				//IL_0042: Unknown result type (might be due to invalid IL or missing references)
				//IL_0047: Unknown result type (might be due to invalid IL or missing references)
				//IL_004c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0061: Unknown result type (might be due to invalid IL or missing references)
				//IL_0066: Unknown result type (might be due to invalid IL or missing references)
				//IL_0079: Unknown result type (might be due to invalid IL or missing references)
				//IL_007e: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ca: Unknown result type (might be due to invalid IL or missing references)
				//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
				//IL_00e4: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ee: Expected O, but got Unknown
				int result;
				switch (base._state)
				{
				default:
					_0024self__00242354.curVector = _0024self__00242354.player.transform.position - _0024self__00242354.t.position;
					if (!(_0024self__00242354.player.transform.position.x <= _0024self__00242354.t.position.x))
					{
						_0024self__00242354.e.transform.rotation = Quaternion.Euler(0f, 180f, 0f);
					}
					else
					{
						_0024self__00242354.e.transform.rotation = Quaternion.Euler(0f, 0f, 0f);
					}
					_0024self__00242354.atking = true;
					result = (((GenericGeneratorEnumerator<WaitForSeconds>)this).Yield(2, new WaitForSeconds(2f)) ? 1 : 0);
					break;
				case 2:
					_0024self__00242354.atking = false;
					goto default;
				case 1:
					result = 0;
					break;
				}
				return (byte)result != 0;
			}
		}

		internal ScourgeScript _0024self__00242355;

		public _0024Attack_00242353(ScourgeScript self_)
		{
			_0024self__00242355 = self_;
		}

		public override IEnumerator<WaitForSeconds> GetEnumerator()
		{
			return (IEnumerator<WaitForSeconds>)(object)new _0024(_0024self__00242355);
		}
	}

	[Serializable]
	[CompilerGenerated]
	internal sealed class _0024K_00242356 : GenericGenerator<YieldInstruction>
	{
		[Serializable]
		[CompilerGenerated]
		internal sealed class _0024 : GenericGeneratorEnumerator<YieldInstruction>, IEnumerator
		{
			internal bool _0024wasK_00242357;

			internal int _0024_0024877_00242358;

			internal Vector3 _0024_0024878_00242359;

			internal int _0024_0024879_00242360;

			internal Vector3 _0024_0024880_00242361;

			internal int _0024_0024881_00242362;

			internal Vector3 _0024_0024882_00242363;

			internal int _0024_0024883_00242364;

			internal Vector3 _0024_0024884_00242365;

			internal bool _0024l_00242366;

			internal ScourgeScript _0024self__00242367;

			public _0024(bool l, ScourgeScript self_)
			{
				_0024l_00242366 = l;
				_0024self__00242367 = self_;
			}

			public override bool MoveNext()
			{
				//IL_0247: Unknown result type (might be due to invalid IL or missing references)
				//IL_0251: Expected O, but got Unknown
				//IL_018d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0192: Unknown result type (might be due to invalid IL or missing references)
				//IL_0193: Unknown result type (might be due to invalid IL or missing references)
				//IL_0195: Unknown result type (might be due to invalid IL or missing references)
				//IL_019a: Unknown result type (might be due to invalid IL or missing references)
				//IL_01c1: Unknown result type (might be due to invalid IL or missing references)
				//IL_01c6: Unknown result type (might be due to invalid IL or missing references)
				//IL_01c7: Unknown result type (might be due to invalid IL or missing references)
				//IL_01ce: Unknown result type (might be due to invalid IL or missing references)
				//IL_01eb: Unknown result type (might be due to invalid IL or missing references)
				//IL_01f0: Unknown result type (might be due to invalid IL or missing references)
				//IL_01f1: Unknown result type (might be due to invalid IL or missing references)
				//IL_01f3: Unknown result type (might be due to invalid IL or missing references)
				//IL_01f8: Unknown result type (might be due to invalid IL or missing references)
				//IL_021f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0224: Unknown result type (might be due to invalid IL or missing references)
				//IL_0225: Unknown result type (might be due to invalid IL or missing references)
				//IL_022c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0231: Unknown result type (might be due to invalid IL or missing references)
				//IL_023b: Expected O, but got Unknown
				//IL_00c1: Unknown result type (might be due to invalid IL or missing references)
				//IL_00c6: Unknown result type (might be due to invalid IL or missing references)
				//IL_00c7: Unknown result type (might be due to invalid IL or missing references)
				//IL_00c8: Unknown result type (might be due to invalid IL or missing references)
				//IL_00cd: Unknown result type (might be due to invalid IL or missing references)
				//IL_00f1: Unknown result type (might be due to invalid IL or missing references)
				//IL_00f6: Unknown result type (might be due to invalid IL or missing references)
				//IL_00f7: Unknown result type (might be due to invalid IL or missing references)
				//IL_00fd: Unknown result type (might be due to invalid IL or missing references)
				//IL_0119: Unknown result type (might be due to invalid IL or missing references)
				//IL_011e: Unknown result type (might be due to invalid IL or missing references)
				//IL_011f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0121: Unknown result type (might be due to invalid IL or missing references)
				//IL_0126: Unknown result type (might be due to invalid IL or missing references)
				//IL_014d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0152: Unknown result type (might be due to invalid IL or missing references)
				//IL_0153: Unknown result type (might be due to invalid IL or missing references)
				//IL_015a: Unknown result type (might be due to invalid IL or missing references)
				//IL_015f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0169: Expected O, but got Unknown
				int result;
				switch (base._state)
				{
				default:
					if (MenuScript.multiplayer > 0)
					{
						((Component)_0024self__00242367).networkView.RPC("KN", (RPCMode)2, new object[1] { _0024l_00242366 });
						goto IL_027e;
					}
					_0024self__00242367.knocking = true;
					_0024wasK_00242357 = default(bool);
					if (((Component)_0024self__00242367).rigidbody.isKinematic)
					{
						_0024wasK_00242357 = true;
						((Component)_0024self__00242367).rigidbody.isKinematic = false;
					}
					if (_0024l_00242366)
					{
						int num = (_0024_0024877_00242358 = -15);
						Vector3 val = (_0024_0024878_00242359 = ((Component)_0024self__00242367).rigidbody.velocity);
						float num2 = (_0024_0024878_00242359.x = _0024_0024877_00242358);
						Vector3 val3 = (((Component)_0024self__00242367).rigidbody.velocity = _0024_0024878_00242359);
						int num3 = (_0024_0024879_00242360 = 10);
						Vector3 val4 = (_0024_0024880_00242361 = ((Component)_0024self__00242367).rigidbody.velocity);
						float num4 = (_0024_0024880_00242361.y = _0024_0024879_00242360);
						Vector3 val6 = (((Component)_0024self__00242367).rigidbody.velocity = _0024_0024880_00242361);
						result = (((GenericGeneratorEnumerator<YieldInstruction>)this).Yield(2, (YieldInstruction)new WaitForEndOfFrame()) ? 1 : 0);
					}
					else
					{
						int num5 = (_0024_0024881_00242362 = 15);
						Vector3 val7 = (_0024_0024882_00242363 = ((Component)_0024self__00242367).rigidbody.velocity);
						float num6 = (_0024_0024882_00242363.x = _0024_0024881_00242362);
						Vector3 val9 = (((Component)_0024self__00242367).rigidbody.velocity = _0024_0024882_00242363);
						int num7 = (_0024_0024883_00242364 = 10);
						Vector3 val10 = (_0024_0024884_00242365 = ((Component)_0024self__00242367).rigidbody.velocity);
						float num8 = (_0024_0024884_00242365.y = _0024_0024883_00242364);
						Vector3 val12 = (((Component)_0024self__00242367).rigidbody.velocity = _0024_0024884_00242365);
						result = (((GenericGeneratorEnumerator<YieldInstruction>)this).Yield(3, (YieldInstruction)new WaitForEndOfFrame()) ? 1 : 0);
					}
					break;
				case 2:
				case 3:
					result = (((GenericGeneratorEnumerator<YieldInstruction>)this).Yield(4, (YieldInstruction)new WaitForSeconds(0.5f)) ? 1 : 0);
					break;
				case 4:
					_0024self__00242367.knocking = false;
					if (_0024wasK_00242357)
					{
						((Component)_0024self__00242367).rigidbody.isKinematic = true;
					}
					goto IL_027e;
				case 1:
					{
						result = 0;
						break;
					}
					IL_027e:
					((GenericGeneratorEnumerator<YieldInstruction>)this).YieldDefault(1);
					goto case 1;
				}
				return (byte)result != 0;
			}
		}

		internal bool _0024l_00242368;

		internal ScourgeScript _0024self__00242369;

		public _0024K_00242356(bool l, ScourgeScript self_)
		{
			_0024l_00242368 = l;
			_0024self__00242369 = self_;
		}

		public override IEnumerator<YieldInstruction> GetEnumerator()
		{
			return (IEnumerator<YieldInstruction>)(object)new _0024(_0024l_00242368, _0024self__00242369);
		}
	}

	private GameObject player;

	private bool atking;

	private Vector3 curVector;

	private float speed;

	public AudioClip scourge1;

	public ScourgeScript()
	{
		speed = 8f;
	}

	public override void Awake()
	{
		//IL_007c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0081: Unknown result type (might be due to invalid IL or missing references)
		((Component)this).audio.PlayOneShot(scourge1);
		t = ((Component)this).transform;
		r = ((Component)this).rigidbody;
		((Component)this).collider.material.dynamicFriction = 0f;
		int[] array = new int[3] { 7, 18, 0 };
		SetStats(10, 8, 1, 3, 2f, array, Random.Range(2, 6), 2);
		player = GameObject.Find("player(Clone)");
		MonoBehaviour.print((object)player.transform.position.x);
		((MonoBehaviour)this).StartCoroutine_Auto(Attack());
	}

	public override void OnTriggerEnter(Collider c)
	{
		if (((Component)c).gameObject.layer == 13)
		{
			MonoBehaviour.print((object)"hit");
			((Component)c).gameObject.SendMessage("TD", (object)ATK);
		}
		else if (((Component)c).gameObject.layer == 18)
		{
			((MonoBehaviour)this).StartCoroutine_Auto(TD(1));
		}
	}

	public override void Update()
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		if (atking)
		{
			t.Translate(((Vector3)(ref curVector)).normalized * speed * Time.deltaTime);
		}
	}

	public override IEnumerator Attack()
	{
		return new _0024Attack_00242353(this).GetEnumerator();
	}

	public override IEnumerator K(bool l)
	{
		return new _0024K_00242356(l, this).GetEnumerator();
	}
}
