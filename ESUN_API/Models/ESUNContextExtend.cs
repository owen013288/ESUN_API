using ESUN_API.Dto;
using Microsoft.EntityFrameworkCore;

namespace ESUN_API.Models
{
    public partial class ESUNContextExtend : ESUNContext
    {
        public ESUNContextExtend(DbContextOptions<ESUNContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Company> Company { get; set; } = null!;
        public virtual DbSet<Industry> Industry { get; set; } = null!;
        public virtual DbSet<Revenue> Revenue { get; set; } = null!;

        #region Extend
        // Extend
        public virtual DbSet<RevenueData> RevenueData { get; set; } = null!;
        #endregion

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Company>(entity =>
            {
                entity.HasKey(e => e.CompanyCode);

                entity.Property(e => e.CompanyCode)
                    .HasMaxLength(6)
                    .IsUnicode(false)
                    .HasComment("公司代號");

                entity.Property(e => e.CompanyName)
                    .HasMaxLength(50)
                    .HasComment("公司名稱");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())")
                    .HasComment("建立時間");

                entity.Property(e => e.IndustryId).HasComment("產業別");

                entity.Property(e => e.ModifyTime)
                    .HasColumnType("datetime")
                    .HasComment("修改時間");

                entity.HasOne(d => d.Industry)
                    .WithMany(p => p.Company)
                    .HasForeignKey(d => d.IndustryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Company_Industry");
            });

            modelBuilder.Entity<Industry>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasDefaultValueSql("(newid())")
                    .HasComment("PK");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())")
                    .HasComment("建立時間");

                entity.Property(e => e.ModifyTime)
                    .HasColumnType("datetime")
                    .HasComment("修改時間");

                entity.Property(e => e.IndustryName)
                    .HasMaxLength(50)
                    .HasComment("產業名稱");
            });

            modelBuilder.Entity<Revenue>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasDefaultValueSql("(newid())")
                    .HasComment("PK");

                entity.Property(e => e.CompanyCode)
                    .HasMaxLength(6)
                    .IsUnicode(false)
                    .HasComment("公司代號");

                entity.Property(e => e.CreateTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())")
                    .HasComment("建立時間");

                entity.Property(e => e.CumulativeRevenue_CurrentMonth).HasComment("累計營業收入-當月累計營收");

                entity.Property(e => e.CumulativeRevenue_LastYear).HasComment("累計營業收入-去年累計營收");

                entity.Property(e => e.CumulativeRevenue_PeriodOverPeriodGrowthPct).HasComment("累計營業收入-前期比較增減(%)");

                entity.Property(e => e.Memo).HasComment("備註");

                entity.Property(e => e.ModifyTime)
                    .HasColumnType("datetime")
                    .HasComment("修改時間");

                entity.Property(e => e.PublishDate)
                    .HasMaxLength(7)
                    .IsUnicode(false)
                    .IsFixedLength()
                    .HasComment("出表日期(民國_月_日)");

                entity.Property(e => e.Revenue_CurrentMonth).HasComment("營業收入-當月營收");

                entity.Property(e => e.Revenue_MonthOverMonthGrowthPct).HasComment("營業收入-上月比較增減(%)");

                entity.Property(e => e.Revenue_PreviousMonth).HasComment("營業收入-上月營收");

                entity.Property(e => e.Revenue_SameMonthLastYear).HasComment("營業收入-去年當月營收");

                entity.Property(e => e.Revenue_YearOverYearGrowthPct).HasComment("營業收入-去年同月增減(%)");

                entity.Property(e => e.Year_Date)
                    .HasMaxLength(5)
                    .IsUnicode(false)
                    .IsFixedLength()
                    .HasComment("資料年月");

                entity.HasOne(d => d.CompanyCodeNavigation)
                    .WithMany(p => p.Revenue)
                    .HasForeignKey(d => d.CompanyCode)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Revenue_Company");
            });

            #region Extend
            // Extend
            modelBuilder.Entity<RevenueData>(entity =>
            {
                entity.HasNoKey();

                entity.Property(e => e.CompanyCode)
                    .HasMaxLength(6)
                    .IsUnicode(false)
                    .HasComment("公司代號");

                entity.Property(e => e.CompanyName)
                    .HasMaxLength(50)
                    .HasComment("公司名稱");

                entity.Property(e => e.IndustryName)
                    .HasMaxLength(50)
                    .HasComment("產業名稱");

                entity.Property(e => e.CumulativeRevenue_CurrentMonth).HasComment("累計營業收入-當月累計營收");

                entity.Property(e => e.CumulativeRevenue_LastYear).HasComment("累計營業收入-去年累計營收");

                entity.Property(e => e.CumulativeRevenue_PeriodOverPeriodGrowthPct).HasComment("累計營業收入-前期比較增減(%)");

                entity.Property(e => e.Memo).HasComment("備註");

                entity.Property(e => e.PublishDate)
                    .HasMaxLength(7)
                    .IsUnicode(false)
                    .IsFixedLength()
                    .HasComment("出表日期(民國_月_日)");

                entity.Property(e => e.Revenue_CurrentMonth).HasComment("營業收入-當月營收");

                entity.Property(e => e.Revenue_MonthOverMonthGrowthPct).HasComment("營業收入-上月比較增減(%)");

                entity.Property(e => e.Revenue_PreviousMonth).HasComment("營業收入-上月營收");

                entity.Property(e => e.Revenue_SameMonthLastYear).HasComment("營業收入-去年當月營收");

                entity.Property(e => e.Revenue_YearOverYearGrowthPct).HasComment("營業收入-去年同月增減(%)");

                entity.Property(e => e.Year_Date)
                    .HasMaxLength(5)
                    .IsUnicode(false)
                    .IsFixedLength()
                    .HasComment("資料年月");
            });
            #endregion

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}