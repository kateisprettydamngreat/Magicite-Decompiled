using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Boo.Lang;
using UnityEngine;

[Serializable]
public class DmgScript : MonoBehaviour
{
	[Serializable]
	[CompilerGenerated]
	internal sealed class _0024Start_00241476 : GenericGenerator<WaitForSeconds>
	{
		[Serializable]
		[CompilerGenerated]
		internal sealed class _0024 : GenericGeneratorEnumerator<WaitForSeconds>, IEnumerator
		{
			internal int _0024_0024526_00241477;

			internal Vector3 _0024_0024527_00241478;

			internal DmgScript _0024self__00241479;

			public _0024(DmgScript self_)
			{
				_0024self__00241479 = self_;
			}

			public override bool MoveNext()
			{
				//IL_009d: Unknown result type (might be due to invalid IL or missing references)
				//IL_00a2: Unknown result type (might be due to invalid IL or missing references)
				//IL_00a3: Unknown result type (might be due to invalid IL or missing references)
				//IL_00a4: Unknown result type (might be due to invalid IL or missing references)
				//IL_00a9: Unknown result type (might be due to invalid IL or missing references)
				//IL_00cd: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d2: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
				//IL_0128: Unknown result type (might be due to invalid IL or missing references)
				//IL_013d: Unknown result type (might be due to invalid IL or missing references)
				//IL_006a: Unknown result type (might be due to invalid IL or missing references)
				//IL_0074: Expected O, but got Unknown
				//IL_0103: Unknown result type (might be due to invalid IL or missing references)
				//IL_010d: Expected O, but got Unknown
				int result;
				switch (base._state)
				{
				default:
					_0024self__00241479.t = ((Component)_0024self__00241479).transform;
					if (_0024self__00241479.isAltar)
					{
						_0024self__00241479.wait = 3.5f;
					}
					else
					{
						_0024self__00241479.wait = 1f;
					}
					result = (((GenericGeneratorEnumerator<WaitForSeconds>)this).Yield(2, new WaitForSeconds(0.15f)) ? 1 : 0);
					break;
				case 2:
				{
					_0024self__00241479.stop = true;
					int num = (_0024_0024526_00241477 = -10);
					Vector3 val = (_0024_0024527_00241478 = _0024self__00241479.t.position);
					float num2 = (_0024_0024527_00241478.z = _0024_0024526_00241477);
					Vector3 val3 = (_0024self__00241479.t.position = _0024_0024527_00241478);
					if (MenuScript.multiplayer > 0)
					{
						if (_0024self__00241479.type == 0)
						{
							result = (((GenericGeneratorEnumerator<WaitForSeconds>)this).Yield(3, new WaitForSeconds(_0024self__00241479.wait)) ? 1 : 0);
							break;
						}
						if (_0024self__00241479.type == 3)
						{
							Object.Destroy((Object)(object)((Component)_0024self__00241479).gameObject, _0024self__00241479.wait);
						}
						else
						{
							Object.Destroy((Object)(object)((Component)_0024self__00241479).gameObject, _0024self__00241479.wait);
						}
					}
					goto IL_0198;
				}
				case 3:
					if (MenuScript.multiplayer == 1)
					{
						Network.RemoveRPCs(((Component)_0024self__00241479).networkView.viewID);
						Network.Destroy(((Component)_0024self__00241479).networkView.viewID);
					}
					goto IL_0198;
				case 1:
					{
						result = 0;
						break;
					}
					IL_0198:
					((GenericGeneratorEnumerator<WaitForSeconds>)this).YieldDefault(1);
					goto case 1;
				}
				return (byte)result != 0;
			}
		}

		internal DmgScript _0024self__00241480;

		public _0024Start_00241476(DmgScript self_)
		{
			_0024self__00241480 = self_;
		}

		public override IEnumerator<WaitForSeconds> GetEnumerator()
		{
			return (IEnumerator<WaitForSeconds>)(object)new _0024(_0024self__00241480);
		}
	}

	public int type;

	public TextMesh txtDmg;

	public TextMesh txtDmg2;

	private Transform t;

	private float num;

	private bool stop;

	public bool isAltar;

	private float wait;

	public DmgScript()
	{
		num = 10f;
	}

	public override void Awake()
	{
	}

	public override IEnumerator Start()
	{
		return new _0024Start_00241476(this).GetEnumerator();
	}

	public override void Update()
	{
		//IL_0011: Unknown result type (might be due to invalid IL or missing references)
		//IL_0016: Unknown result type (might be due to invalid IL or missing references)
		//IL_0034: Unknown result type (might be due to invalid IL or missing references)
		//IL_0039: Unknown result type (might be due to invalid IL or missing references)
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		//IL_004e: Unknown result type (might be due to invalid IL or missing references)
		//IL_004f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0050: Unknown result type (might be due to invalid IL or missing references)
		//IL_0057: Unknown result type (might be due to invalid IL or missing references)
		if (!stop)
		{
			float y = t.position.y + this.num * Time.deltaTime;
			Vector3 position = t.position;
			float num = (position.y = y);
			Vector3 val2 = (t.position = position);
		}
	}

	public override void SD(int a)
	{
		if (type == 1)
		{
			txtDmg.text = "+" + (object)a + " HP";
		}
		else if (type == 2)
		{
			txtDmg.text = "+" + (object)a + " Mana";
		}
		else if (type == 3)
		{
			txtDmg.text = "+" + (object)a;
			txtDmg2.text = "+" + (object)a;
		}
		txtDmg2.text = txtDmg.text;
	}

	[RPC]
	public override void SDSN(string a)
	{
		txtDmg.text = string.Empty + a;
		txtDmg2.text = string.Empty + a;
	}

	public override void SDS(string a)
	{
		txtDmg.text = string.Empty + a;
		txtDmg2.text = string.Empty + a;
	}

	[RPC]
	public override void SDN(int a)
	{
		if (type == 1)
		{
			txtDmg.text = "+" + (object)a + " HP";
		}
		else if (type == 2)
		{
			txtDmg.text = "+" + (object)a + " Mana";
		}
		else
		{
			txtDmg.text = string.Empty + (object)a;
			txtDmg2.text = string.Empty + (object)a;
		}
		txtDmg2.text = txtDmg2.text;
	}

	[RPC]
	public override void Initialize(NetworkViewID id)
	{
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		((Component)this).networkView.viewID = id;
	}

	public override void Main()
	{
	}
}
