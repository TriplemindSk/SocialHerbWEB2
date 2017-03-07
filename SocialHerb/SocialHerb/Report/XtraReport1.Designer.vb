<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Public Class XtraReport1
    Inherits DevExpress.XtraReports.UI.XtraReport

    'XtraReport overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Designer
    'It can be modified using the Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(XtraReport1))
        Dim Series1 As DevExpress.XtraCharts.Series = New DevExpress.XtraCharts.Series()
        Dim SeriesPoint1 As DevExpress.XtraCharts.SeriesPoint = New DevExpress.XtraCharts.SeriesPoint("อาการ/โรค", New Object() {CType(20.0R, Object)}, 0)
        Dim SeriesPoint2 As DevExpress.XtraCharts.SeriesPoint = New DevExpress.XtraCharts.SeriesPoint("สมุนไพร", New Object() {CType(50.0R, Object)}, 1)
        Dim SeriesPoint3 As DevExpress.XtraCharts.SeriesPoint = New DevExpress.XtraCharts.SeriesPoint("จิตอาสา(เภสัชกร)", New Object() {CType(30.0R, Object)}, 2)
        Dim DoughnutSeriesView1 As DevExpress.XtraCharts.DoughnutSeriesView = New DevExpress.XtraCharts.DoughnutSeriesView()
        Me.Detail = New DevExpress.XtraReports.UI.DetailBand()
        Me.TopMargin = New DevExpress.XtraReports.UI.TopMarginBand()
        Me.XrLabel1 = New DevExpress.XtraReports.UI.XRLabel()
        Me.XrLine1 = New DevExpress.XtraReports.UI.XRLine()
        Me.XrPictureBox1 = New DevExpress.XtraReports.UI.XRPictureBox()
        Me.BottomMargin = New DevExpress.XtraReports.UI.BottomMarginBand()
        Me.SocialHerbDataSet1 = New SocialHerb.SocialHerbDataSet()
        Me.AdminTableAdapter = New SocialHerb.SocialHerbDataSetTableAdapters.AdminTableAdapter()
        Me.HerbTableAdapter = New SocialHerb.SocialHerbDataSetTableAdapters.HerbTableAdapter()
        Me.DiseaseTableAdapter = New SocialHerb.SocialHerbDataSetTableAdapters.DiseaseTableAdapter()
        Me.PharmacistTableAdapter = New SocialHerb.SocialHerbDataSetTableAdapters.PharmacistTableAdapter()
        Me.SocialHerbnewDataSet1 = New SocialHerb.SocialHerbnewDataSet()
        Me.AdminTableAdapter1 = New SocialHerb.SocialHerbnewDataSetTableAdapters.AdminTableAdapter()
        Me.DiseaseTableAdapter1 = New SocialHerb.SocialHerbnewDataSetTableAdapters.DiseaseTableAdapter()
        Me.PharmacistTableAdapter1 = New SocialHerb.SocialHerbnewDataSetTableAdapters.PharmacistTableAdapter()
        Me.HerbTableAdapter1 = New SocialHerb.SocialHerbnewDataSetTableAdapters.HerbTableAdapter()
        Me.XrChart1 = New DevExpress.XtraReports.UI.XRChart()
        Me.XrLabel2 = New DevExpress.XtraReports.UI.XRLabel()
        CType(Me.SocialHerbDataSet1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SocialHerbnewDataSet1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.XrChart1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Series1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(DoughnutSeriesView1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me, System.ComponentModel.ISupportInitialize).BeginInit()
        '
        'Detail
        '
        Me.Detail.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrLabel2, Me.XrChart1})
        Me.Detail.Dpi = 100.0!
        Me.Detail.HeightF = 678.125!
        Me.Detail.Name = "Detail"
        Me.Detail.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'TopMargin
        '
        Me.TopMargin.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrLabel1, Me.XrLine1, Me.XrPictureBox1})
        Me.TopMargin.Dpi = 100.0!
        Me.TopMargin.HeightF = 137.5!
        Me.TopMargin.Name = "TopMargin"
        Me.TopMargin.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.TopMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'XrLabel1
        '
        Me.XrLabel1.Dpi = 100.0!
        Me.XrLabel1.Font = New System.Drawing.Font("Angsana New", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.XrLabel1.LocationFloat = New DevExpress.Utils.PointFloat(514.5833!, 78.83339!)
        Me.XrLabel1.Name = "XrLabel1"
        Me.XrLabel1.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrLabel1.SizeF = New System.Drawing.SizeF(135.4167!, 23.0!)
        Me.XrLabel1.StylePriority.UseFont = False
        Me.XrLabel1.Text = "วันที่ 4 มีนาคม 2560"
        '
        'XrLine1
        '
        Me.XrLine1.Dpi = 100.0!
        Me.XrLine1.ForeColor = System.Drawing.Color.Maroon
        Me.XrLine1.LineWidth = 2
        Me.XrLine1.LocationFloat = New DevExpress.Utils.PointFloat(0.0!, 112.4166!)
        Me.XrLine1.Name = "XrLine1"
        Me.XrLine1.SizeF = New System.Drawing.SizeF(650.0!, 23.0!)
        Me.XrLine1.StylePriority.UseForeColor = False
        '
        'XrPictureBox1
        '
        Me.XrPictureBox1.Dpi = 100.0!
        Me.XrPictureBox1.Image = CType(resources.GetObject("XrPictureBox1.Image"), System.Drawing.Image)
        Me.XrPictureBox1.LocationFloat = New DevExpress.Utils.PointFloat(0.0!, 21.83332!)
        Me.XrPictureBox1.Name = "XrPictureBox1"
        Me.XrPictureBox1.SizeF = New System.Drawing.SizeF(190.7085!, 90.58327!)
        Me.XrPictureBox1.Sizing = DevExpress.XtraPrinting.ImageSizeMode.ZoomImage
        '
        'BottomMargin
        '
        Me.BottomMargin.Dpi = 100.0!
        Me.BottomMargin.HeightF = 100.0!
        Me.BottomMargin.Name = "BottomMargin"
        Me.BottomMargin.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.BottomMargin.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'SocialHerbDataSet1
        '
        Me.SocialHerbDataSet1.DataSetName = "SocialHerbDataSet"
        Me.SocialHerbDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'AdminTableAdapter
        '
        Me.AdminTableAdapter.ClearBeforeFill = True
        '
        'HerbTableAdapter
        '
        Me.HerbTableAdapter.ClearBeforeFill = True
        '
        'DiseaseTableAdapter
        '
        Me.DiseaseTableAdapter.ClearBeforeFill = True
        '
        'PharmacistTableAdapter
        '
        Me.PharmacistTableAdapter.ClearBeforeFill = True
        '
        'SocialHerbnewDataSet1
        '
        Me.SocialHerbnewDataSet1.DataSetName = "SocialHerbnewDataSet"
        Me.SocialHerbnewDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'AdminTableAdapter1
        '
        Me.AdminTableAdapter1.ClearBeforeFill = True
        '
        'DiseaseTableAdapter1
        '
        Me.DiseaseTableAdapter1.ClearBeforeFill = True
        '
        'PharmacistTableAdapter1
        '
        Me.PharmacistTableAdapter1.ClearBeforeFill = True
        '
        'HerbTableAdapter1
        '
        Me.HerbTableAdapter1.ClearBeforeFill = True
        '
        'XrChart1
        '
        Me.XrChart1.BorderColor = System.Drawing.Color.Black
        Me.XrChart1.Borders = DevExpress.XtraPrinting.BorderSide.None
        Me.XrChart1.Dpi = 100.0!
        Me.XrChart1.Legend.AlignmentVertical = DevExpress.XtraCharts.LegendAlignmentVertical.Bottom
        Me.XrChart1.Legend.Name = "Default Legend"
        Me.XrChart1.LocationFloat = New DevExpress.Utils.PointFloat(29.79164!, 136.8751!)
        Me.XrChart1.Name = "XrChart1"
        Series1.Name = "Series 1"
        SeriesPoint1.ColorSerializable = "#FFFF00"
        SeriesPoint2.ColorSerializable = "#9BBB59"
        SeriesPoint3.ColorSerializable = "#F79646"
        Series1.Points.AddRange(New DevExpress.XtraCharts.SeriesPoint() {SeriesPoint1, SeriesPoint2, SeriesPoint3})
        Series1.View = DoughnutSeriesView1
        Me.XrChart1.SeriesSerializable = New DevExpress.XtraCharts.Series() {Series1}
        Me.XrChart1.SizeF = New System.Drawing.SizeF(600.3334!, 513.5416!)
        '
        'XrLabel2
        '
        Me.XrLabel2.Borders = DevExpress.XtraPrinting.BorderSide.None
        Me.XrLabel2.Dpi = 100.0!
        Me.XrLabel2.Font = New System.Drawing.Font("Angsana New", 18.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.XrLabel2.LocationFloat = New DevExpress.Utils.PointFloat(60.33332!, 28.08332!)
        Me.XrLabel2.Name = "XrLabel2"
        Me.XrLabel2.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 96.0!)
        Me.XrLabel2.SizeF = New System.Drawing.SizeF(539.5833!, 38.62499!)
        Me.XrLabel2.StylePriority.UseBorders = False
        Me.XrLabel2.StylePriority.UseFont = False
        Me.XrLabel2.StylePriority.UseTextAlignment = False
        Me.XrLabel2.Text = "อัตราส่วนของข้อมูลระหว่างสมุนไพร,อาการ/โรคและจิตอาสา(เภสัชกร)"
        Me.XrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XtraReport1
        '
        Me.Bands.AddRange(New DevExpress.XtraReports.UI.Band() {Me.Detail, Me.TopMargin, Me.BottomMargin})
        Me.Font = New System.Drawing.Font("Angsana New", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Margins = New System.Drawing.Printing.Margins(98, 100, 138, 100)
        Me.Version = "16.2"
        CType(Me.SocialHerbDataSet1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SocialHerbnewDataSet1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(DoughnutSeriesView1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Series1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.XrChart1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me, System.ComponentModel.ISupportInitialize).EndInit()

    End Sub
    Friend WithEvents Detail As DevExpress.XtraReports.UI.DetailBand
    Friend WithEvents TopMargin As DevExpress.XtraReports.UI.TopMarginBand
    Friend WithEvents BottomMargin As DevExpress.XtraReports.UI.BottomMarginBand
    Friend WithEvents XrLabel1 As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrLine1 As DevExpress.XtraReports.UI.XRLine
    Friend WithEvents XrPictureBox1 As DevExpress.XtraReports.UI.XRPictureBox
    Friend WithEvents DiseaseTableAdapter As SocialHerb.SocialHerbDataSetTableAdapters.DiseaseTableAdapter
    Friend WithEvents SocialHerbDataSet1 As SocialHerb.SocialHerbDataSet
    Friend WithEvents AdminTableAdapter As SocialHerb.SocialHerbDataSetTableAdapters.AdminTableAdapter
    Friend WithEvents HerbTableAdapter As SocialHerb.SocialHerbDataSetTableAdapters.HerbTableAdapter
    Friend WithEvents PharmacistTableAdapter As SocialHerb.SocialHerbDataSetTableAdapters.PharmacistTableAdapter
    Friend WithEvents XrChart1 As DevExpress.XtraReports.UI.XRChart
    Friend WithEvents SocialHerbnewDataSet1 As SocialHerb.SocialHerbnewDataSet
    Friend WithEvents AdminTableAdapter1 As SocialHerb.SocialHerbnewDataSetTableAdapters.AdminTableAdapter
    Friend WithEvents DiseaseTableAdapter1 As SocialHerb.SocialHerbnewDataSetTableAdapters.DiseaseTableAdapter
    Friend WithEvents PharmacistTableAdapter1 As SocialHerb.SocialHerbnewDataSetTableAdapters.PharmacistTableAdapter
    Friend WithEvents HerbTableAdapter1 As SocialHerb.SocialHerbnewDataSetTableAdapters.HerbTableAdapter
    Friend WithEvents XrLabel2 As DevExpress.XtraReports.UI.XRLabel
End Class
