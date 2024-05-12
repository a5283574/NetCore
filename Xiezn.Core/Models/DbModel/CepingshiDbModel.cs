using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SqlSugar;
using Newtonsoft.Json;

namespace Xiezn.Core.Models.DbModel
{
    /// <summary>
    ///	Desc: 测评师
    /// </summary>
    [SugarTable("cepingshi")]
	public class CepingshiDbModel
	{           
		/// <summary>
		/// Desc: 主键Id
		/// </summary>
		[SugarColumn(IsPrimaryKey = true, ColumnName = "id")]
		public long Id { get; set; }

		/// <summary>
		/// Desc: 测评账号
		/// </summary>
		[SugarColumn(ColumnName = "cepingzhanghao")]
		public string Cepingzhanghao { get; set; }

		/// <summary>
		/// Desc: 密码
		/// </summary>
		[SugarColumn(ColumnName = "mima")]
		public string Mima { get; set; }

		/// <summary>
		/// Desc: 测评姓名
		/// </summary>
		[SugarColumn(ColumnName = "cepingxingming")]
		public string Cepingxingming { get; set; }

		/// <summary>
		/// Desc: 性别
		/// </summary>
		[SugarColumn(ColumnName = "xingbie")]
		public string Xingbie { get; set; }

		/// <summary>
		/// Desc: 年龄
		/// </summary>
		[SugarColumn(ColumnName = "nianling")]
		public string Nianling { get; set; }

		/// <summary>
		/// Desc: 头像
		/// </summary>
		[SugarColumn(ColumnName = "touxiang")]
		public string Touxiang { get; set; }

		/// <summary>
		/// Desc: 联系方式
		/// </summary>
		[SugarColumn(ColumnName = "lianxifangshi")]
		public string Lianxifangshi { get; set; }

		/// <summary>
		/// Desc: 添加时间
		/// </summary>
		[SugarColumn(ColumnName = "addtime")]
		public DateTime? Addtime { get; set; } = DateTime.Now;

	}
}
