﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebBaiGiang_CKC.Data;

#nullable disable

namespace WebBaiGiang_CKC.Migrations
{
    [DbContext(typeof(WebBaiGiangContext))]
    [Migration("20230708192447_baigiangckc")]
    partial class baigiangckc
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.18")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("WebBaiGiang_CKC.Models.Bai", b =>
                {
                    b.Property<int>("BaiId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("BaiId"), 1L, 1);

                    b.Property<int>("ChuongId")
                        .HasColumnType("int");

                    b.Property<string>("MoTa")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("SoBai")
                        .HasColumnType("int");

                    b.Property<string>("TenBai")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("BaiId");

                    b.HasIndex("ChuongId");

                    b.ToTable("Bai");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.BaiLam", b =>
                {
                    b.Property<int>("BaiLamId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("BaiLamId"), 1L, 1);

                    b.Property<float?>("Diem")
                        .HasColumnType("real");

                    b.Property<string>("HoTen")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MSSV")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("SoCauDung")
                        .HasColumnType("int");

                    b.Property<DateTime?>("ThoiGianBatDau")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("ThoiGianDenHan")
                        .HasColumnType("datetime2");

                    b.HasKey("BaiLamId");

                    b.ToTable("BaiLam");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.CauHoi", b =>
                {
                    b.Property<int>("CauHoiId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CauHoiId"), 1L, 1);

                    b.Property<int>("ChuongId")
                        .HasColumnType("int");

                    b.Property<string>("DapAnA")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("DapAnB")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("DapAnC")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("DapAnD")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("DapAnDung")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("DoKho")
                        .HasColumnType("real");

                    b.Property<string>("NoiDung")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("SoLanLay")
                        .HasColumnType("int");

                    b.Property<int?>("SoLanTraLoiDung")
                        .HasColumnType("int");

                    b.HasKey("CauHoiId");

                    b.HasIndex("ChuongId");

                    b.ToTable("CauHoi");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.CauHoi_BaiLam", b =>
                {
                    b.Property<int>("CauHoi_BaiLamId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CauHoi_BaiLamId"), 1L, 1);

                    b.Property<int>("BaiLamId")
                        .HasColumnType("int");

                    b.Property<int>("CauHoi_DeId")
                        .HasColumnType("int");

                    b.Property<string>("DapAnSVChon")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("CauHoi_BaiLamId");

                    b.HasIndex("BaiLamId");

                    b.HasIndex("CauHoi_DeId");

                    b.ToTable("CauHoi_BaiLam");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.CauHoi_De", b =>
                {
                    b.Property<int>("CauHoi_DeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CauHoi_DeId"), 1L, 1);

                    b.Property<int>("CauHoiId")
                        .HasColumnType("int");

                    b.Property<int>("DeId")
                        .HasColumnType("int");

                    b.HasKey("CauHoi_DeId");

                    b.HasIndex("CauHoiId");

                    b.HasIndex("DeId");

                    b.ToTable("CauHoi_De");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.Chuong", b =>
                {
                    b.Property<int>("ChuongId")
                        .HasColumnType("int");

                    b.Property<int>("MonHocId")
                        .HasColumnType("int");

                    b.Property<string>("TenChuong")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ChuongId");

                    b.HasIndex("ChuongId")
                        .IsUnique();

                    b.HasIndex("MonHocId");

                    b.ToTable("Chuong");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.DanhSachThi", b =>
                {
                    b.Property<int>("DanhSachThiId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("DanhSachThiId"), 1L, 1);

                    b.Property<int>("KyKiemTraId")
                        .HasColumnType("int");

                    b.Property<int>("TaiKhoanId")
                        .HasColumnType("int");

                    b.Property<bool>("TrangThai")
                        .HasColumnType("bit");

                    b.HasKey("DanhSachThiId");

                    b.HasIndex("KyKiemTraId");

                    b.HasIndex("TaiKhoanId");

                    b.ToTable("DanhSachThi");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.De", b =>
                {
                    b.Property<int>("DeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("DeId"), 1L, 1);

                    b.Property<float>("DoKhoDe")
                        .HasColumnType("real");

                    b.Property<int>("KyKiemTraId")
                        .HasColumnType("int");

                    b.Property<int>("SoCauHoi")
                        .HasColumnType("int");

                    b.HasKey("DeId");

                    b.HasIndex("KyKiemTraId");

                    b.ToTable("De");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.GiaoVien", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("AnhDaiDien")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("HoTen")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("nvarchar(20)");

                    b.Property<bool>("IsGiaoVien")
                        .HasColumnType("bit");

                    b.Property<string>("MatKhau")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("TenDangNhap")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("nvarchar(20)");

                    b.Property<bool>("TrangThai")
                        .HasColumnType("bit");

                    b.HasKey("Id");

                    b.ToTable("GiaoVien");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.KyKiemTra", b =>
                {
                    b.Property<int>("KyKiemTraId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("KyKiemTraId"), 1L, 1);

                    b.Property<string>("TenKyKiemTra")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("ThoiGianBatDau")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("ThoiGianKetThuc")
                        .HasColumnType("datetime2");

                    b.Property<int>("ThoiGianLamBai")
                        .HasColumnType("int");

                    b.HasKey("KyKiemTraId");

                    b.ToTable("KyKiemTra");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.MonHoc", b =>
                {
                    b.Property<int>("MonHocId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("MonHocId"), 1L, 1);

                    b.Property<string>("MaMonHoc")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MoTa")
                        .IsRequired()
                        .HasColumnType("ntext");

                    b.Property<string>("TenMonHoc")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MonHocId");

                    b.ToTable("MonHoc");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.Muc", b =>
                {
                    b.Property<int>("MucId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("MucId"), 1L, 1);

                    b.Property<int>("BaiId")
                        .HasColumnType("int");

                    b.Property<int>("MucSo")
                        .HasColumnType("int");

                    b.Property<string>("NoiDung")
                        .IsRequired()
                        .HasColumnType("ntext");

                    b.Property<string>("TenMuc")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("MucId");

                    b.HasIndex("BaiId");

                    b.ToTable("Muc");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.TaiKhoan", b =>
                {
                    b.Property<int>("TaiKhoanId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("TaiKhoanId"), 1L, 1);

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("HoTen")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MSSV")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("nvarchar(20)");

                    b.Property<string>("MatKhau")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<bool>("TrangThai")
                        .HasColumnType("bit");

                    b.HasKey("TaiKhoanId");

                    b.ToTable("TaiKhoan");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.Bai", b =>
                {
                    b.HasOne("WebBaiGiang_CKC.Models.Chuong", "Chuong")
                        .WithMany("Bais")
                        .HasForeignKey("ChuongId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Chuong");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.CauHoi", b =>
                {
                    b.HasOne("WebBaiGiang_CKC.Models.Chuong", "Chuong")
                        .WithMany()
                        .HasForeignKey("ChuongId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Chuong");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.CauHoi_BaiLam", b =>
                {
                    b.HasOne("WebBaiGiang_CKC.Models.BaiLam", "BaiLam")
                        .WithMany("CauHoi_BaiLam")
                        .HasForeignKey("BaiLamId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("WebBaiGiang_CKC.Models.CauHoi_De", "CauHoi_De")
                        .WithMany("CauHoi_BaiLam")
                        .HasForeignKey("CauHoi_DeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("BaiLam");

                    b.Navigation("CauHoi_De");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.CauHoi_De", b =>
                {
                    b.HasOne("WebBaiGiang_CKC.Models.CauHoi", "CauHoi")
                        .WithMany("CauHoi_De")
                        .HasForeignKey("CauHoiId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("WebBaiGiang_CKC.Models.De", "De")
                        .WithMany("CauHoi_DeThi")
                        .HasForeignKey("DeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CauHoi");

                    b.Navigation("De");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.Chuong", b =>
                {
                    b.HasOne("WebBaiGiang_CKC.Models.MonHoc", "MonHoc")
                        .WithMany("Chuongs")
                        .HasForeignKey("MonHocId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("MonHoc");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.DanhSachThi", b =>
                {
                    b.HasOne("WebBaiGiang_CKC.Models.KyKiemTra", "KyKiemTra")
                        .WithMany("DanhSachThi")
                        .HasForeignKey("KyKiemTraId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("WebBaiGiang_CKC.Models.TaiKhoan", "TaiKhoan")
                        .WithMany()
                        .HasForeignKey("TaiKhoanId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("KyKiemTra");

                    b.Navigation("TaiKhoan");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.De", b =>
                {
                    b.HasOne("WebBaiGiang_CKC.Models.KyKiemTra", "KyKiemTra")
                        .WithMany("De")
                        .HasForeignKey("KyKiemTraId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("KyKiemTra");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.Muc", b =>
                {
                    b.HasOne("WebBaiGiang_CKC.Models.Bai", "Bai")
                        .WithMany("Mucs")
                        .HasForeignKey("BaiId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Bai");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.Bai", b =>
                {
                    b.Navigation("Mucs");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.BaiLam", b =>
                {
                    b.Navigation("CauHoi_BaiLam");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.CauHoi", b =>
                {
                    b.Navigation("CauHoi_De");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.CauHoi_De", b =>
                {
                    b.Navigation("CauHoi_BaiLam");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.Chuong", b =>
                {
                    b.Navigation("Bais");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.De", b =>
                {
                    b.Navigation("CauHoi_DeThi");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.KyKiemTra", b =>
                {
                    b.Navigation("DanhSachThi");

                    b.Navigation("De");
                });

            modelBuilder.Entity("WebBaiGiang_CKC.Models.MonHoc", b =>
                {
                    b.Navigation("Chuongs");
                });
#pragma warning restore 612, 618
        }
    }
}
