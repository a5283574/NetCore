using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SqlSugar;
using Newtonsoft.Json;

namespace Xiezn.Core.Models.DbModel
{
    /// <summary>
    ///	Desc: 项目测评
    /// </summary>
    [SugarTable("xiangmuceping")]
	public class XiangmucepingDbModel
	{           
		/// <summary>
		/// Desc: 主键Id
		/// </summary>
		[SugarColumn(IsPrimaryKey = true, ColumnName = "id")]
		public long Id { get; set; }

		/// <summary>
		/// Desc: 项目名称
		/// </summary>
		[SugarColumn(ColumnName = "xiangmumingcheng")]
		public string Xiangmumingcheng { get; set; }

		/// <summary>
		/// Desc: 目标
		/// </summary>
		[SugarColumn(ColumnName = "mubiao")]
		public string Mubiao { get; set; }

		/// <summary>
		/// Desc: 时间表
		/// </summary>
		[SugarColumn(ColumnName = "shijianbiao")]
		public string Shijianbiao { get; set; }

		/// <summary>
		/// Desc: 用户账号
		/// </summary>
		[SugarColumn(ColumnName = "yonghuzhanghao")]
		public string Yonghuzhanghao { get; set; }

		/// <summary>
		/// Desc: 用户姓名
		/// </summary>
		[SugarColumn(ColumnName = "yonghuxingming")]
		public string Yonghuxingming { get; set; }

		/// <summary>
		/// Desc: 测评账号
		/// </summary>
		[SugarColumn(ColumnName = "cepingzhanghao")]
		public string Cepingzhanghao { get; set; }

		/// <summary>
		/// Desc: 测评姓名
		/// </summary>
		[SugarColumn(ColumnName = "cepingxingming")]
		public string Cepingxingming { get; set; }

		/// <summary>
		/// Desc: 系统名称
		/// </summary>
		[SugarColumn(ColumnName = "xitongmingcheng")]
		public string Xitongmingcheng { get; set; }

		/// <summary>
		/// Desc: 所属单位
		/// </summary>
		[SugarColumn(ColumnName = "suoshudanwei")]
		public string Suoshudanwei { get; set; }

		/// <summary>
		/// Desc: 联系人
		/// </summary>
		[SugarColumn(ColumnName = "lianxiren")]
		public string Lianxiren { get; set; }

		/// <summary>
		/// Desc: 系统等级
		/// </summary>
		[SugarColumn(ColumnName = "xitongdengji")]
		public string Xitongdengji { get; set; }

		/// <summary>
		/// Desc: 测评结果
		/// </summary>
		[SugarColumn(ColumnName = "cepingjieguo")]
		public string Cepingjieguo { get; set; }

		/// <summary>
		/// Desc: 添加时间
		/// </summary>
		[SugarColumn(ColumnName = "addtime")]
		public DateTime? Addtime { get; set; } = DateTime.Now;
		/// <summary>
		/// 测评人
		/// </summary>
		[SugarColumn(ColumnName = "cepingren")]
		public string CepingRen { get; set; }
		public void AddCepingRen(string name) 
		{
			if (this.CepingRen ==null )
			{
				this.CepingRen = name;
            }
			else
			{
				if (!this.CepingRen.Contains(name))
				{
                    this.CepingRen += "、" + name;
                }
			}
		}
	}
}
