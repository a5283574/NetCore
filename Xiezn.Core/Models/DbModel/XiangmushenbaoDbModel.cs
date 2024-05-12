using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SqlSugar;
using Newtonsoft.Json;

namespace Xiezn.Core.Models.DbModel
{
    /// <summary>
    ///	Desc: 项目申报
    /// </summary>
    [SugarTable("xiangmushenbao")]
	public class XiangmushenbaoDbModel
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
		/// Desc: 添加时间
		/// </summary>
		[SugarColumn(ColumnName = "addtime")]
		public DateTime? Addtime { get; set; } = DateTime.Now;
        [SugarColumn(ColumnName = "bianhao")]

        public string Bianhao { get; set; }
        [SugarColumn(ColumnName = "danwei")]

        public string Danwei { get; set; }
        [SugarColumn(ColumnName = "fuzeren")]

        public string Fuzeren { get; set; }
        [SugarColumn(ColumnName = "dianhua")]

        public string Dianhua { get; set; }
        [SugarColumn(ColumnName = "xiangmudengji")]

        public string XiangmuDengji { get; set; }
        [SugarColumn(ColumnName = "beianshijian")]

        public string Beianshijian { get; set; }

	}
}
