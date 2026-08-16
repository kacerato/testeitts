.class public Le6/E;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:Le6/K;

.field public B:[Landroid/view/View;

.field public C:[Landroid/view/View;

.field public D:Landroid/view/View;

.field public E:Landroid/view/View;

.field public F:[Landroid/view/View;

.field public G:[Landroid/widget/TextView;

.field public H:[Landroid/widget/ImageView;

.field public I:[Le6/K;

.field public J:[Z

.field public K:[I

.field public L:[Landroid/widget/TextView;

.field public M:[Landroid/widget/TextView;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:I

.field public S:Z

.field public T:Z

.field public U:F

.field public V:F

.field public W:Z

.field public final b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

.field public final c:Le6/X;

.field public final d:Landroid/graphics/drawable/GradientDrawable;

.field public e:Landroid/graphics/drawable/GradientDrawable;

.field public f:Ljava/lang/String;

.field public final g:Landroid/graphics/Paint;

.field public h:F

.field public i:Landroid/widget/FrameLayout;

.field public j:I

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/FrameLayout;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/LinearLayout;

.field public o:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/LinearLayout$LayoutParams;

.field public r:Landroid/widget/LinearLayout$LayoutParams;

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/ImageView;

.field public u:I

.field public v:Z

.field public w:Z

.field public x:[Le6/K;

.field public y:[Le6/K;

.field public z:Le6/K;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Le6/X;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "node",
            "graphView"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Le6/E;->d:Landroid/graphics/drawable/GradientDrawable;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le6/E;->g:Landroid/graphics/Paint;

    const/4 p1, -0x1

    iput p1, p0, Le6/E;->R:I

    iput-object p2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    iput-object p3, p0, Le6/E;->c:Le6/X;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Le6/E;->I()V

    invoke-virtual {p0}, Le6/E;->P0()V

    return-void
.end method

.method public static synthetic A(Le6/E;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Le6/E;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    invoke-virtual {p0, p1}, Le6/E;->V0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Le6/E;I)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0

    invoke-virtual {p0, p1}, Le6/E;->b0(I)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getUV0()"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "v.uv0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "getUserWorldPosition()"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "v.worldPosition"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "getWorldNormalVector()"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "world normal"

    if-nez v1, :cond_6

    const-string v1, "v.worldNormal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "getWorldGeometricNormalVector()"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v2

    :cond_4
    const-string v1, "getWorldViewVector()"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "view dir"

    return-object p0

    :cond_5
    return-object v0

    :cond_6
    :goto_0
    return-object v2

    :cond_7
    :goto_1
    const-string p0, "world pos"

    return-object p0

    :cond_8
    :goto_2
    const-string p0, "mesh uv"

    return-object p0
.end method

.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    const-string v0, "-"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static T(FI)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "decimals"
        }
    .end annotation

    invoke-static {p0, p1}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le6/E;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "-"

    return-object p0
.end method

.method public static synthetic a(Le6/E;)V
    .locals 0

    invoke-virtual {p0}, Le6/E;->w0()V

    return-void
.end method

.method public static synthetic b(Le6/E;LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;IILga/H;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Le6/E;->E0(LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;IILga/H;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Le6/E;ILJAVARuntime/InputDialog$Type;ILga/H;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Le6/E;->A0(ILJAVARuntime/InputDialog$Type;ILga/H;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Le6/E;Ljava/util/List;Landroid/widget/LinearLayout;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le6/E;->y0(Ljava/util/List;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method public static d1(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "0.0"

    const-string v3, "-0"

    if-gez v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, v2

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    if-le v4, v1, :cond_4

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_4

    add-int/lit8 v4, v4, -0x1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, p0

    :goto_1
    return-object v2
.end method

.method public static synthetic e(Le6/E;ILga/H;ILga/H;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Le6/E;->D0(ILga/H;ILga/H;Landroid/view/View;)V

    return-void
.end method

.method public static e1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v1, 0x4

    invoke-static {p0, v1}, Le6/E;->g1(Ljava/lang/String;I)[F

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_3

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    aget v0, v1, v5

    aget v4, v1, v4

    aget v3, v1, v3

    aget v1, v1, v2

    invoke-direct {p0, v0, v4, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p0

    :cond_3
    invoke-static {p0, v5}, Le6/E;->g1(Ljava/lang/String;I)[F

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    aget v0, v1, v4

    aget v3, v1, v3

    aget v1, v1, v2

    invoke-direct {p0, v5, v0, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p0

    :cond_4
    invoke-static {p0}, Le6/E;->f1(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v0, v5, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    :cond_5
    return-object v0
.end method

.method public static synthetic f(Le6/E;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le6/E;->v0(ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Landroid/view/View;)V

    return-void
.end method

.method public static f1(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "[-+]?\\d*\\.?\\d+(?:[eE][-+]?\\d+)?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static synthetic g(Le6/E;ILcc/e;ILga/H;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Le6/E;->z0(ILcc/e;ILga/H;Landroid/view/View;)V

    return-void
.end method

.method public static g1(Ljava/lang/String;I)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expr",
            "comps"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string v1, "float2("

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string v1, "float3("

    goto :goto_0

    :cond_2
    const-string v1, "float4("

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-array v1, p1, [F

    :try_start_0
    array-length v2, p0

    const/4 v4, 0x0

    if-ne v2, v3, :cond_7

    aget-object p0, p0, v4

    invoke-static {p0}, Le6/E;->f1(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    if-ge v4, p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-object v1

    :cond_7
    array-length v2, p0

    if-ge v2, p1, :cond_8

    return-object v0

    :cond_8
    :goto_2
    if-ge v4, p1, :cond_a

    aget-object v2, p0, v4

    invoke-static {v2}, Le6/E;->f1(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    return-object v1

    :catch_0
    :cond_b
    :goto_3
    return-object v0
.end method

.method public static synthetic h(Le6/E;ILga/H;ILga/H;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Le6/E;->C0(ILga/H;ILga/H;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Le6/E;)V
    .locals 0

    invoke-virtual {p0}, Le6/E;->O0()V

    return-void
.end method

.method public static synthetic j(Le6/E;)V
    .locals 0

    invoke-virtual {p0}, Le6/E;->F()V

    return-void
.end method

.method public static synthetic k(Le6/E;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/E;->s0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Le6/E;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/E;->u0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Le6/E;ILga/G;ILga/H;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Le6/E;->B0(ILga/G;ILga/H;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Le6/E;)V
    .locals 0

    invoke-virtual {p0}, Le6/E;->x0()V

    return-void
.end method

.method public static synthetic o(Le6/E;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Le6/E;->t0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Le6/E;ILec/a;ILga/H;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Le6/E;->G0(ILec/a;ILga/H;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Le6/E;ILjava/lang/String;ILga/H;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Le6/E;->F0(ILjava/lang/String;ILga/H;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Le6/E;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 0

    iget-object p0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    return-object p0
.end method

.method public static synthetic s(Le6/E;ILga/H;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/E;->i1(ILga/H;)V

    return-void
.end method

.method public static synthetic t(Le6/E;ILga/H;)[F
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/E;->c0(ILga/H;)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Le6/E;)V
    .locals 0

    invoke-virtual {p0}, Le6/E;->J()V

    return-void
.end method

.method public static synthetic v(Le6/E;)Le6/X;
    .locals 0

    iget-object p0, p0, Le6/E;->c:Le6/X;

    return-object p0
.end method

.method public static synthetic w(Le6/E;I)F
    .locals 0

    invoke-virtual {p0, p1}, Le6/E;->a0(I)F

    move-result p0

    return p0
.end method

.method public static synthetic x(Le6/E;I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    invoke-virtual {p0, p1}, Le6/E;->X(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Le6/E;ILga/H;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Le6/E;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Le6/E;->W(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic A0(ILJAVARuntime/InputDialog$Type;ILga/H;Landroid/view/View;)V
    .locals 1

    iget-object p5, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    sget-object v0, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->k(ILga/H;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {p0, p3, p4}, Le6/E;->i1(ILga/H;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method

.method public final synthetic B0(ILga/G;ILga/H;Landroid/view/View;)V
    .locals 1

    iget-object p5, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    sget-object v0, Lga/H;->POPUP_DIALOG_TYPE:Lga/H;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->k(ILga/H;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {p0, p3, p4}, Le6/E;->i1(ILga/H;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method

.method public final synthetic C0(ILga/H;ILga/H;Landroid/view/View;)V
    .locals 2

    iget-object p5, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    const-string v0, ""

    const-string v1, "Owner"

    invoke-static {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->h(ILga/H;Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {p0, p3, p4}, Le6/E;->i1(ILga/H;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method

.method public final D(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stretch"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->p:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v1, p0, Le6/E;->q:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_9

    iget-object v1, p0, Le6/E;->r:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    if-eqz p1, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Le6/E;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Le6/E;->q:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v2, v1, :cond_6

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_7

    :cond_6
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v0, p0, Le6/E;->r:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v2, v1, :cond_8

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_9

    :cond_8
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p1, p0, Le6/E;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final synthetic D0(ILga/H;ILga/H;Landroid/view/View;)V
    .locals 2

    iget-object p5, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    const-string v0, ""

    const-string v1, "[Pick first]"

    invoke-static {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->h(ILga/H;Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {p0, p3, p4}, Le6/E;->i1(ILga/H;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Le6/E;->t:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->exposeInInspector:Z

    if-eqz v1, :cond_1

    const v2, 0x7f07025e

    goto :goto_0

    :cond_1
    const v2, 0x7f070260

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v1, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    :goto_1
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iget-object v1, p0, Le6/E;->t:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object v0, p0, Le6/E;->t:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final synthetic E0(LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;IILga/H;Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lga/d;->m(LJAVARuntime/Component;)Lga/H;

    move-result-object p6

    invoke-static {p1, p2}, Lga/d;->d(LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-static {p1}, Lga/d;->p(LJAVARuntime/Component;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p6, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->h(ILga/H;Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {p0, p4, p5}, Le6/E;->i1(ILga/H;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method

.method public final F()V
    .locals 3

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawGradientNode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Le6/E;->T:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Le6/E;->q:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    iget-object v1, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Le6/E;->q:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v2, v0, :cond_2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Le6/E;->T:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final synthetic F0(ILjava/lang/String;ILga/H;Landroid/view/View;)V
    .locals 0

    iget-object p5, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->j(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {p0, p3, p4}, Le6/E;->i1(ILga/H;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method

.method public final G(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invalidate"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->d:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Le6/E;->d:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v2

    invoke-static {}, Lga/e;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, Le6/E;->g:Landroid/graphics/Paint;

    invoke-static {}, Lga/e;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le6/E;->e:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Le6/E;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    invoke-static {}, Lga/e;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    invoke-virtual {p0}, Le6/E;->E()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final synthetic G0(ILec/a;ILga/H;Landroid/view/View;)V
    .locals 1

    iget-object p5, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    sget-object v0, Lga/H;->BLENDING_MODE:Lga/H;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->k(ILga/H;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {p0, p3, p4}, Le6/E;->i1(ILga/H;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method

.method public final H(Landroid/widget/TextView;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "slot",
            "input",
            "index"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    iget-object v1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v1}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->E(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;I)I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, p4

    :goto_0
    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Le6/E;->W0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZIILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lga/H;

    move-result-object p4

    invoke-virtual {p0, p2, p4, p3}, Le6/E;->k0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lga/H;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2, p4, p3}, Le6/E;->l0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lga/H;Z)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final H0(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiIndex"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->K:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    :cond_0
    return p1
.end method

.method public final I()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, LNc/b;->k0(F)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v14, v0, Le6/E;->d:Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v15}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v14, v0, Le6/E;->d:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v11, v11

    invoke-virtual {v14, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v14, v0, Le6/E;->d:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v15}, LNc/b;->k0(F)I

    move-result v1

    invoke-static {}, Lga/e;->d()I

    move-result v2

    invoke-virtual {v14, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Le6/E;->h:F

    iget-object v2, v0, Le6/E;->g:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Le6/E;->g:Landroid/graphics/Paint;

    iget v14, v0, Le6/E;->h:F

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Le6/E;->g:Landroid/graphics/Paint;

    invoke-static {}, Lga/e;->c()I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v2

    const/high16 v14, 0x41800000    # 16.0f

    if-eqz v2, :cond_0

    iput v13, v0, Le6/E;->j:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    const/high16 v18, 0x41f00000    # 30.0f

    invoke-static/range {v18 .. v18}, LNc/b;->k0(F)I

    move-result v18

    add-int v2, v2, v18

    invoke-static {v14}, LNc/b;->k0(F)I

    move-result v18

    add-int v2, v2, v18

    iput v2, v0, Le6/E;->j:I

    :goto_0
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v2, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Le6/E;->i:Landroid/widget/FrameLayout;

    iget-object v14, v0, Le6/E;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v2

    iget-object v14, v0, Le6/E;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v14, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v2, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Le6/E;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v14, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    const/high16 v14, -0x40000000    # -2.0f

    invoke-static {v14}, LNc/b;->k0(F)I

    move-result v14

    iput v14, v0, Le6/E;->u:I

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v4, v0, Le6/E;->j:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, v0, Le6/E;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Le6/E;->i:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v14, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Le6/E;->c:Le6/X;

    invoke-virtual {v3}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v3

    iget-object v4, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    iget-object v4, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->b0()Z

    move-result v4

    const/high16 v14, 0x40c00000    # 6.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v19, 0x41200000    # 10.0f

    if-eqz v4, :cond_3

    if-eqz v3, :cond_1

    array-length v3, v3

    if-nez v3, :cond_3

    :cond_1
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v2, v0, Le6/E;->e:Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v3, 0x4479c000    # 999.0f

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {v15}, LNc/b;->k0(F)I

    move-result v3

    invoke-static {}, Lga/e;->d()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v12, v0, Le6/E;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {v19 .. v19}, LNc/b;->k0(F)I

    move-result v2

    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Le6/E;->D:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, v0, Le6/E;->D:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Le6/E;->D:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Le6/E;->D:Landroid/view/View;

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, v0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Le6/E;->E:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v10}, LNc/b;->k0(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v4, v0, Le6/E;->E:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Le6/E;->E:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Le6/E;->E:Landroid/view/View;

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    array-length v3, v3

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, v0, Le6/E;->C:[Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v14}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {v3, v2, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Le6/E;->C:[Landroid/view/View;

    aput-object v3, v1, v13

    iput-boolean v8, v0, Le6/E;->O:Z

    :cond_2
    new-array v1, v13, [Landroid/view/View;

    iput-object v1, v0, Le6/E;->B:[Landroid/view/View;

    iput-boolean v13, v0, Le6/E;->N:Z

    invoke-virtual/range {p0 .. p0}, Le6/E;->m1()V

    new-instance v1, Le6/v;

    invoke-direct {v1, v0}, Le6/v;-><init>(Le6/E;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_3
    iget-object v3, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v3

    const v4, 0x800015

    const/4 v15, -0x1

    if-nez v3, :cond_8

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v10, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->O()LAc/b;

    move-result-object v10

    invoke-static {v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v10, 0x8

    new-array v10, v10, [F

    aput v11, v10, v13

    aput v11, v10, v8

    aput v11, v10, v7

    const/16 v18, 0x3

    aput v11, v10, v18

    const/4 v11, 0x0

    aput v11, v10, v6

    const/16 v18, 0x5

    aput v11, v10, v18

    const/16 v17, 0x6

    aput v11, v10, v17

    const/16 v16, 0x7

    aput v11, v10, v16

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {v19 .. v19}, LNc/b;->k0(F)I

    move-result v3

    iget-object v10, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->z0()Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Le6/E;->D:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v11, 0x800013

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v11, v0, Le6/E;->D:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v0, Le6/E;->D:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v0, Le6/E;->D:Landroid/view/View;

    invoke-virtual {v1, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    iput-object v12, v0, Le6/E;->D:Landroid/view/View;

    :goto_1
    iget-object v10, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A0()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Le6/E;->E:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, v0, Le6/E;->E:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Le6/E;->E:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Le6/E;->E:Landroid/view/View;

    invoke-virtual {v1, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    iput-object v12, v0, Le6/E;->E:Landroid/view/View;

    :goto_2
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v0, Le6/E;->k:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v14}, LNc/b;->k0(F)I

    move-result v3

    iget-object v4, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->z0()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static/range {v19 .. v19}, LNc/b;->k0(F)I

    move-result v4

    goto :goto_3

    :cond_6
    move v4, v13

    :goto_3
    add-int/2addr v4, v3

    iget-object v5, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A0()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static/range {v19 .. v19}, LNc/b;->k0(F)I

    move-result v5

    goto :goto_4

    :cond_7
    move v5, v13

    :goto_4
    add-int/2addr v5, v3

    iget-object v6, v0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, v0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_8
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v10, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v10, 0x8

    new-array v10, v10, [F

    aput v11, v10, v13

    aput v11, v10, v8

    aput v11, v10, v7

    const/4 v7, 0x3

    aput v11, v10, v7

    const/4 v7, 0x0

    aput v7, v10, v6

    const/4 v6, 0x5

    aput v7, v10, v6

    const/4 v6, 0x6

    aput v7, v10, v6

    const/4 v6, 0x7

    aput v7, v10, v6

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v5

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v6

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v7

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {v3, v5, v6, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Le6/E;->t:Landroid/widget/ImageView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, v0, Le6/E;->t:Landroid/widget/ImageView;

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Le6/E;->E()V

    iget-object v1, v0, Le6/E;->t:Landroid/widget/ImageView;

    new-instance v3, Le6/w;

    invoke-direct {v3, v0}, Le6/w;-><init>(Le6/E;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    invoke-virtual {v0, v2}, Le6/E;->o0(Landroid/widget/LinearLayout;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Le6/E;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v4

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    invoke-virtual {v1, v13, v4, v13, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, v0, Le6/E;->q:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Le6/E;->m:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v6

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v7

    invoke-virtual {v4, v6, v13, v7, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v0, Le6/E;->m:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Le6/E;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, v0, Le6/E;->r:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v0, Le6/E;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Le6/E;->n:Landroid/widget/LinearLayout;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v6

    invoke-virtual {v1, v4, v13, v6, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Le6/E;->n:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Le6/E;->s:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Le6/E;->l:Landroid/widget/FrameLayout;

    iget-object v2, v0, Le6/E;->s:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v0, Le6/E;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->materialGraphPreviewsEnabled:Z

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    move v8, v13

    :goto_6
    invoke-virtual {v0, v8}, Le6/E;->setPreviewEnabled(Z)V

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v13}, Le6/E;->setPreviewEnabled(Z)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Le6/E;->K()V

    invoke-virtual/range {p0 .. p0}, Le6/E;->J()V

    invoke-virtual/range {p0 .. p0}, Le6/E;->m1()V

    new-instance v1, Le6/x;

    invoke-direct {v1, v0}, Le6/x;-><init>(Le6/E;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Le6/y;

    invoke-direct {v1, v0}, Le6/y;-><init>(Le6/E;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final I0(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualIndex"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->K:[I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Le6/E;->K:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :cond_2
    return p1
.end method

.method public final J()V
    .locals 9

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le6/E;->h1(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->exposeInInspector:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-instance v1, LC5/b;

    new-instance v4, Le6/E$d;

    invoke-direct {v4, p0}, Le6/E$d;-><init>(Le6/E;)V

    sget-object v5, LC5/b$a;->SLStringWrap:LC5/b$a;

    invoke-direct {v1, v4, v2, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    if-eqz v4, :cond_2

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$e;

    invoke-direct {v5, p0, v1}, Le6/E$e;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;)V

    sget-object v1, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v4, v5, v2, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawTextNode;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawTextNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$f;

    invoke-direct {v5, p0, v1}, Le6/E$f;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawTextNode;)V

    sget-object v1, LC5/b$a;->SLStringWrap:LC5/b$a;

    invoke-direct {v4, v5, v2, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;

    const-string v5, ""

    if-eqz v4, :cond_4

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;

    new-instance v2, LC5/b;

    new-instance v4, Le6/E$g;

    invoke-direct {v4, p0, v1}, Le6/E$g;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;)V

    invoke-direct {v2, v4, v5}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawSliderNode;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawSliderNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$h;

    invoke-direct {v5, p0, v1}, Le6/E$h;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawSliderNode;)V

    sget-object v1, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v4, v5, v2, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat2Node;

    if-eqz v4, :cond_6

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat2Node;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat2Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v5, v1}, Le6/E;->N(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat3Node;

    if-eqz v4, :cond_7

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat3Node;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat3Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v5, v1}, Le6/E;->O(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat4Node;

    if-eqz v4, :cond_8

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat4Node;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v5, v1}, Le6/E;->P(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;

    const-string v6, "C2"

    const-string v7, "C1"

    const-string v8, "C0"

    if-eqz v4, :cond_9

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v8, v2}, Le6/E;->O(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v7, v2}, Le6/E;->O(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat3Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v6, v1}, Le6/E;->O(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;

    if-eqz v4, :cond_a

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v8, v2}, Le6/E;->P(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v7, v2}, Le6/E;->P(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v6, v2}, Le6/E;->P(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "C3"

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v2, v1}, Le6/E;->P(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;

    if-eqz v4, :cond_b

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$i;

    invoke-direct {v5, p0, v1}, Le6/E$i;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawColorNode;)V

    sget-object v1, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v4, v5, v2, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;

    if-eqz v4, :cond_c

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$j;

    invoke-direct {v5, p0, v1}, Le6/E$j;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawTextureNode;)V

    sget-object v1, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v4, v5, v2, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawCubemapNode;

    if-eqz v4, :cond_d

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawCubemapNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$l;

    invoke-direct {v5, p0, v1}, Le6/E$l;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawCubemapNode;)V

    sget-object v1, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    invoke-direct {v4, v5, v2, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawObjectFileNode;

    if-eqz v4, :cond_e

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawObjectFileNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$m;

    invoke-direct {v5, p0, v1}, Le6/E$m;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawObjectFileNode;)V

    sget-object v1, LC5/b$a;->InputFile:LC5/b$a;

    const-string v6, ".go"

    invoke-direct {v4, v5, v2, v1, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;

    if-eqz v4, :cond_f

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$n;

    invoke-direct {v5, p0, v1}, Le6/E$n;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationFileNode;)V

    sget-object v1, LC5/b$a;->InputFile:LC5/b$a;

    const-string v6, ".anim"

    invoke-direct {v4, v5, v2, v1, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_f
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationMaskFileNode;

    if-eqz v4, :cond_10

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationMaskFileNode;

    new-instance v4, LC5/b;

    new-instance v5, Le6/E$o;

    invoke-direct {v5, p0, v1}, Le6/E$o;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Input/Files/RawAnimationMaskFileNode;)V

    sget-object v1, LC5/b$a;->InputFile:LC5/b$a;

    const-string v6, ".amask"

    invoke-direct {v4, v5, v2, v1, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    instance-of v2, v1, LSa/a;

    if-eqz v2, :cond_12

    check-cast v1, LSa/a;

    invoke-virtual {v1}, LSa/a;->G0()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {v2}, LH3/g;->w1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_11
    const-string v2, "None"

    :goto_0
    new-instance v4, LC5/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    invoke-direct {v4, v2, v5}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Le6/E$p;

    invoke-direct {v4, p0, v1}, Le6/E$p;-><init>(Le6/E;LSa/a;)V

    sget-object v5, LC5/b$a;->Button:LC5/b$a;

    const-string v6, "Select Preset"

    invoke-direct {v2, v4, v6, v5}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v2, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Le6/E$q;

    invoke-direct {v4, p0, v1}, Le6/E$q;-><init>(Le6/E;LSa/a;)V

    const-string v1, "Clear Preset"

    invoke-direct {v2, v4, v1, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v2, v3}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_12
    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawGradientNode;

    if-eqz v2, :cond_13

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawGradientNode;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Le6/E$r;

    invoke-direct {v4, p0}, Le6/E$r;-><init>(Le6/E;)V

    invoke-static {v5, v1, v2, v4}, LN9/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;LN9/a$b;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_1
    iget-object v1, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Le6/E;->Z0(Ljava/util/List;Landroid/widget/LinearLayout;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Le6/E;->h1(Z)V

    return-void
.end method

.method public final J0(Landroid/widget/LinearLayout;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method public final K()V
    .locals 10

    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    iget-object v1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    iget-object v2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->K(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Le6/E;->N:Z

    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Le6/E;->O:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    array-length v6, v1

    new-array v6, v6, [Landroid/view/View;

    iput-object v6, p0, Le6/E;->B:[Landroid/view/View;

    array-length v6, v1

    new-array v6, v6, [Landroid/view/View;

    iput-object v6, p0, Le6/E;->F:[Landroid/view/View;

    array-length v6, v1

    new-array v6, v6, [Landroid/widget/TextView;

    iput-object v6, p0, Le6/E;->G:[Landroid/widget/TextView;

    array-length v6, v1

    new-array v6, v6, [Le6/K;

    iput-object v6, p0, Le6/E;->I:[Le6/K;

    array-length v6, v1

    new-array v6, v6, [Landroid/widget/ImageView;

    iput-object v6, p0, Le6/E;->H:[Landroid/widget/ImageView;

    array-length v6, v1

    new-array v6, v6, [Z

    iput-object v6, p0, Le6/E;->J:[Z

    array-length v6, v1

    new-array v6, v6, [I

    iput-object v6, p0, Le6/E;->K:[I

    array-length v6, v1

    new-array v6, v6, [Landroid/widget/TextView;

    iput-object v6, p0, Le6/E;->L:[Landroid/widget/TextView;

    move v6, v3

    :goto_2
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget-object v7, v1, v6

    iget-object v8, p0, Le6/E;->K:[I

    iget-object v9, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v9, v0, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->E(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;I)I

    move-result v9

    aput v9, v8, v6

    iget-object v8, p0, Le6/E;->B:[Landroid/view/View;

    iget-object v9, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9, v7, v4, v6}, Le6/E;->M(Landroid/widget/LinearLayout;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZI)Landroid/view/View;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iput-object v5, p0, Le6/E;->K:[I

    iput-object v5, p0, Le6/E;->L:[Landroid/widget/TextView;

    :cond_3
    if-eqz v2, :cond_4

    array-length v1, v2

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Le6/E;->C:[Landroid/view/View;

    array-length v1, v2

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Le6/E;->M:[Landroid/widget/TextView;

    move v1, v3

    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_5

    aget-object v4, v2, v1

    iget-object v5, p0, Le6/E;->C:[Landroid/view/View;

    iget-object v6, p0, Le6/E;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v4, v3, v1}, Le6/E;->M(Landroid/widget/LinearLayout;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZI)Landroid/view/View;

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iput-object v5, p0, Le6/E;->M:[Landroid/widget/TextView;

    :cond_5
    invoke-virtual {p0, v0}, Le6/E;->T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {p0, v0}, Le6/E;->Q0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    return-void
.end method

.method public final K0()I
    .locals 2

    iget-object v0, p0, Le6/E;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Le6/E;->D(Z)V

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Le6/E;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Le6/E;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final L(ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Landroid/view/View;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "slot"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    if-eqz v1, :cond_b

    invoke-static {v1}, Lga/d;->n(Lga/H;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Le6/E$C;->a:[I

    iget-object v2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    return-object v0

    :cond_1
    :pswitch_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v6

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v9

    sget-object v10, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v7

    iget-object v9, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    sget-object v10, Lga/H;->COLOR:Lga/H;

    if-ne v9, v10, :cond_2

    const/high16 v9, 0x42180000    # 38.0f

    goto :goto_1

    :cond_2
    sget-object v11, Lga/H;->TEXTURE:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->CUBEMAP:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->TEXT:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->GAME_OBJECT:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->MATERIAL:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->OBJECT_FILE:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->SOUND_FILE:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->DIRECTION:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->BLENDING_MODE:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->UV_SOURCE:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    if-eq v9, v11, :cond_4

    sget-object v11, Lga/H;->POPUP_DIALOG_TYPE:Lga/H;

    if-eq v9, v11, :cond_4

    invoke-static {v9}, Lga/d;->n(Lga/H;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v9, 0x42480000    # 50.0f

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 v9, 0x42960000    # 75.0f

    :goto_1
    invoke-static {v9}, LNc/b;->k0(F)I

    move-result v9

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v7

    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x2

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v7, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v9, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    const/4 v11, -0x2

    const/4 v12, -0x1

    if-ne v9, v10, :cond_6

    const v0, 0x7f0700c1

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_5
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v3, 0x7f0700c2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    sget-object v8, Lga/H;->TEXTURE:Lga/H;

    if-eq v9, v8, :cond_8

    sget-object v8, Lga/H;->CUBEMAP:Lga/H;

    if-ne v9, v8, :cond_7

    goto :goto_2

    :cond_7
    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_8
    :goto_2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v3

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, LNc/b;->k0(F)I

    move-result v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v5

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x800013

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v3

    :goto_3
    new-instance v3, Le6/K;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Le6/K;-><init>(Landroid/content/Context;)V

    iget-object v5, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {v3, v5}, Le6/K;->setType(Lga/H;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Le6/E;->F:[Landroid/view/View;

    if-eqz v2, :cond_a

    if-ltz p1, :cond_a

    array-length v5, v2

    if-ge p1, v5, :cond_a

    aput-object v1, v2, p1

    iget-object v5, p0, Le6/E;->G:[Landroid/widget/TextView;

    aput-object v7, v5, p1

    iget-object v5, p0, Le6/E;->H:[Landroid/widget/ImageView;

    aput-object v0, v5, p1

    iget-object v0, p0, Le6/E;->I:[Le6/K;

    if-nez v0, :cond_9

    array-length v0, v2

    new-array v0, v0, [Le6/K;

    iput-object v0, p0, Le6/E;->I:[Le6/K;

    :cond_9
    iget-object v0, p0, Le6/E;->I:[Le6/K;

    aput-object v3, v0, p1

    :cond_a
    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {p0, p1, v0}, Le6/E;->i1(ILga/H;)V

    new-instance v0, Le6/n;

    invoke-direct {v0, p0, p1, p2}, Le6/n;-><init>(Le6/E;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    return-object v1

    :cond_b
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final L0(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->getScale()F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D0(FFFLandroid/content/Context;)V

    invoke-virtual {p0}, Le6/E;->P0()V

    return-void
.end method

.method public final M(Landroid/widget/LinearLayout;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZI)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "column",
            "slot",
            "input",
            "index"
        }
    .end annotation

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p3, :cond_0

    const v2, 0x800013

    goto :goto_0

    :cond_0
    const v2, 0x800015

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v3

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x2

    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v6

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {v3, v6, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v3, p2, p3, p4}, Le6/E;->H(Landroid/widget/TextView;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZI)V

    if-eqz p3, :cond_2

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p3, p0, Le6/E;->L:[Landroid/widget/TextView;

    if-eqz p3, :cond_1

    if-ltz p4, :cond_1

    array-length v1, p3

    if-ge p4, v1, :cond_1

    aput-object v3, p3, p4

    :cond_1
    invoke-virtual {p0, p4, p2}, Le6/E;->L(ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Landroid/view/View;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Le6/E;->M:[Landroid/widget/TextView;

    if-eqz p2, :cond_3

    if-ltz p4, :cond_3

    array-length p3, p2

    if-ge p4, p3, :cond_3

    aput-object v3, p2, p4

    :cond_3
    :goto_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v4
.end method

.method public M0()V
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le6/E;->f:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le6/E;->G(Z)V

    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    invoke-virtual {p0, v0}, Le6/E;->T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    return-void
.end method

.method public final N(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "value"
        }
    .end annotation

    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x2

    new-array v2, v2, [LC5/b;

    invoke-direct {v0, p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v2, Le6/E$s;

    invoke-direct {v2, p0, p2}, Le6/E$s;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    sget-object v3, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v4, "X"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, p1, v4

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, Le6/E$t;

    invoke-direct {v4, p0, p2}, Le6/E$t;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const-string p2, "Y"

    invoke-direct {v1, v4, p2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object p2

    aput-object p2, p1, v2

    return-object v0
.end method

.method public final O(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "value"
        }
    .end annotation

    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x3

    new-array v2, v2, [LC5/b;

    invoke-direct {v0, p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v2, Le6/E$u;

    invoke-direct {v2, p0, p2}, Le6/E$u;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    sget-object v3, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v4, "X"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, p1, v4

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, Le6/E$w;

    invoke-direct {v4, p0, p2}, Le6/E$w;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v5, "Y"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, Le6/E$x;

    invoke-direct {v4, p0, p2}, Le6/E$x;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string p2, "Z"

    invoke-direct {v1, v4, p2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, p1, v1

    return-object v0
.end method

.method public final O0()V
    .locals 9

    iget-object v0, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le6/E;->F:[Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->getScale()F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget-object v0, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Le6/E;->F:[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_8

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, Le6/E;->m0(ZI)Landroid/graphics/PointF;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-lez v5, :cond_7

    if-gtz v6, :cond_4

    goto :goto_3

    :cond_4
    iget-object v7, p0, Le6/E;->I:[Le6/K;

    if-eqz v7, :cond_5

    if-ltz v2, :cond_5

    array-length v8, v7

    if-ge v2, v8, :cond_5

    aget-object v7, v7, v2

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    goto :goto_2

    :cond_6
    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v7

    :goto_2
    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    sub-int v5, v0, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    sub-float/2addr v5, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    int-to-float v6, v6

    mul-float/2addr v6, v8

    sub-float/2addr v4, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->j0()V

    return-void
.end method

.method public final P(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "value"
        }
    .end annotation

    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x4

    new-array v2, v2, [LC5/b;

    invoke-direct {v0, p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v2, Le6/E$y;

    invoke-direct {v2, p0, p2}, Le6/E$y;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    sget-object v3, LC5/b$a;->SLFloatWrap:LC5/b$a;

    const-string v4, "X"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, p1, v4

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, Le6/E$z;

    invoke-direct {v4, p0, p2}, Le6/E$z;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string v5, "Y"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, Le6/E$A;

    invoke-direct {v4, p0, p2}, Le6/E$A;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string v5, "Z"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, p1, v4

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, Le6/E$B;

    invoke-direct {v4, p0, p2}, Le6/E$B;-><init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string p2, "W"

    invoke-direct {v1, v4, p2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, p1, v1

    return-object v0
.end method

.method public P0()V
    .locals 5

    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->getScale()F

    move-result v0

    iget-object v1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v1}, Le6/X;->getPanX()F

    move-result v1

    iget-object v2, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v2}, Le6/X;->getPanY()F

    move-result v2

    iget-object v3, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->g0(Landroid/content/Context;)V

    iget-object v3, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->z(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Le6/E;->m1()V

    return-void
.end method

.method public final Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->q()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->r()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public Q0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->F:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Le6/E;->F:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v1}, Le6/E;->H0(I)I

    move-result v3

    if-eqz p1, :cond_3

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-eqz v5, :cond_2

    iget-object v6, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    if-ne v5, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eqz v3, :cond_4

    const/16 v4, 0x8

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    if-nez v3, :cond_5

    iget-object v2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {p0, v1, v2}, Le6/E;->i1(ILga/H;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Le6/A;

    invoke-direct {p1, p0}, Le6/A;-><init>(Le6/E;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final R()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le6/E;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Le6/E;->f:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le6/E;->G(Z)V

    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    invoke-virtual {p0, v0}, Le6/E;->T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    :cond_0
    return-void
.end method

.method public final R0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    iget-object v2, p0, Le6/E;->L:[Landroid/widget/TextView;

    if-eqz v2, :cond_1

    array-length v4, v2

    if-ge v1, v4, :cond_1

    aget-object v2, v2, v1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v1}, Le6/E;->H(Landroid/widget/TextView;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZI)V

    :cond_1
    iget-object v2, p0, Le6/E;->x:[Le6/K;

    if-eqz v2, :cond_2

    array-length v4, v2

    if-ge v1, v4, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v2, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->E(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;I)I

    move-result v6

    const/4 v4, 0x1

    move-object v2, p0

    move v5, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Le6/E;->W0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZIILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lga/H;

    move-result-object v2

    iget-object v3, p0, Le6/E;->x:[Le6/K;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Le6/K;->setType(Lga/H;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final S0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->K(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    array-length v2, v0

    if-ge v8, v2, :cond_3

    aget-object v3, v0, v8

    iget-object v2, p0, Le6/E;->M:[Landroid/widget/TextView;

    if-eqz v2, :cond_1

    array-length v4, v2

    if-ge v8, v4, :cond_1

    aget-object v2, v2, v8

    invoke-virtual {p0, v2, v3, v1, v8}, Le6/E;->H(Landroid/widget/TextView;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZI)V

    :cond_1
    iget-object v2, p0, Le6/E;->y:[Le6/K;

    if-eqz v2, :cond_2

    array-length v4, v2

    if-ge v8, v4, :cond_2

    aget-object v2, v2, v8

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    move-object v2, p0

    move v5, v8

    move v6, v8

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Le6/E;->W0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZIILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lga/H;

    move-result-object v2

    iget-object v3, p0, Le6/E;->y:[Le6/K;

    aget-object v3, v3, v8

    invoke-virtual {v3, v2}, Le6/K;->setType(Lga/H;)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le6/E;->R0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {p0, p1}, Le6/E;->S0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    return-void
.end method

.method public final U0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lga/H;Ljava/lang/String;)LJAVARuntime/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputDefault",
            "slotType",
            "providerExpr"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->c:Le6/X;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    :cond_2
    invoke-static {p1, v2, v1, p2, p3}, Lga/d;->v(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lga/H;Ljava/lang/String;)LJAVARuntime/Component;

    move-result-object p1

    return-object p1
.end method

.method public final V(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchorView"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    move-object v2, p1

    move v1, v0

    :goto_0
    if-eqz v2, :cond_2

    if-eq v2, p0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    add-float/2addr v1, p1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final V0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputDefault"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->jsonData:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    iget-object v1, p0, Le6/E;->c:Le6/X;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_6
    :goto_3
    return-object v0
.end method

.method public final W(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputIndex"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    const-string v1, "0"

    const/4 v2, 0x1

    const-string v3, "1"

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v4

    :cond_4
    sget-object v0, Lga/H;->BOOLEAN:Lga/H;

    invoke-virtual {p0, p1, v0}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    :cond_7
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_8
    :goto_1
    return v4
.end method

.method public final W0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;ZIILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "slot",
            "input",
            "uiIndex",
            "actualIndex",
            "data"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->NUMBER:Lga/H;

    :goto_0
    if-nez p5, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lga/A;

    invoke-direct {v0, p5}, Lga/A;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v0, p2, p4}, Lga/A;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lga/H;

    move-result-object p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t0(ILga/D;)Lga/H;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_3

    move-object p1, p2

    :cond_3
    return-object p1
.end method

.method public final X(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputIndex"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    sget-object v2, Lga/H;->COLOR:Lga/H;

    if-ne v1, v2, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object p1

    :cond_0
    sget-object v0, Lga/H;->COLOR:Lga/H;

    invoke-virtual {p0, p1, v0}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le6/E;->e1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method public final X0()V
    .locals 1

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Le6/E;->S:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Le6/E;->S:Z

    new-instance v0, Le6/t;

    invoke-direct {v0, p0}, Le6/t;-><init>(Le6/E;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final Y(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputIndex"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lga/H;->DIRECTION:Lga/H;

    invoke-virtual {p0, p1, v0}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lga/m;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetHeight"
        }
    .end annotation

    iput p1, p0, Le6/E;->R:I

    iget-boolean p1, p0, Le6/E;->Q:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Le6/E;->Q:Z

    new-instance p1, Le6/z;

    invoke-direct {p1, p0}, Le6/z;-><init>(Le6/E;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final Z(ILga/H;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "type"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v0, Lga/H;->BLENDING_MODE:Lga/H;

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lga/m;->N(Ljava/lang/Object;)Lec/a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lga/H;->UV_SOURCE:Lga/H;

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Lga/m;->k0(Ljava/lang/Object;)Lcc/e;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    if-ne p2, v0, :cond_3

    invoke-static {p1}, Lga/m;->Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lga/H;->POPUP_DIALOG_TYPE:Lga/H;

    if-ne p2, v0, :cond_4

    invoke-static {p1}, Lga/m;->d0(Ljava/lang/Object;)Lga/G;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public final Z0(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, LC5/b;

    iget-object v2, v5, LC5/b;->n:LC5/b$a;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    if-ne v2, v3, :cond_2

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v2, v5, v0, v3}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_1

    :cond_2
    sget-object v3, LC5/b$a;->Component:LC5/b$a;

    if-ne v2, v3, :cond_3

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Le6/u;

    invoke-direct {v8, p0, p1, p2}, Le6/u;-><init>(Le6/E;Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_1

    :cond_3
    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a0(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputIndex"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    return p1

    :cond_0
    sget-object v0, Lga/H;->NUMBER:Lga/H;

    invoke-virtual {p0, p1, v0}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le6/E;->f1(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a1(Landroid/view/View;ILga/H;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "inputIndex",
            "type"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    if-eqz v8, :cond_2a

    if-nez v10, :cond_0

    goto/16 :goto_14

    :cond_0
    iget-object v0, v7, Le6/E;->J:[Z

    if-eqz v0, :cond_1

    if-ltz v9, :cond_1

    array-length v1, v0

    if-ge v9, v1, :cond_1

    aget-boolean v0, v0, v9

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v7, v10}, Le6/E;->d0(Lga/H;)Lga/H;

    move-result-object v11

    invoke-virtual {v7, v9}, Le6/E;->H0(I)I

    move-result v12

    invoke-static {v11}, Lga/d;->n(Lga/H;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_c

    iget-object v0, v7, Le6/E;->c:Le6/X;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    move-object v15, v2

    goto :goto_1

    :cond_3
    move-object v15, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    :cond_4
    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    if-ne v11, v0, :cond_5

    if-eqz v1, :cond_5

    move v13, v14

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :goto_2
    invoke-static {v15}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v15, v11}, Lga/d;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lga/H;)Ljava/util/List;

    move-result-object v0

    :goto_3
    move-object v6, v0

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    goto :goto_3

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v13, :cond_8

    invoke-static {v15}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "No component defaults are available here."

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string v0, "No eligible components found on [Pick first]."

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_8
    new-instance v14, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v14}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz v13, :cond_9

    new-instance v13, Ldd/b;

    new-instance v5, Le6/B;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v12

    move-object v3, v11

    move/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le6/B;-><init>(Le6/E;ILga/H;ILga/H;)V

    const-string v0, "Owner"

    invoke-direct {v13, v0, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v7, Ldd/b;

    new-instance v13, Le6/C;

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v12

    move-object v3, v11

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le6/C;-><init>(Le6/E;ILga/H;ILga/H;)V

    const-string v0, "[Pick first]"

    invoke-direct {v7, v0, v13}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LJAVARuntime/Component;

    new-instance v11, Ldd/b;

    invoke-static {v2}, Lga/d;->p(LJAVARuntime/Component;)Ljava/lang/String;

    move-result-object v13

    new-instance v6, Le6/D;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v3, v15

    move v4, v12

    move/from16 v5, p2

    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Le6/D;-><init>(Le6/E;LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;IILga/H;)V

    invoke-direct {v11, v13, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v16

    goto :goto_6

    :cond_b
    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v8, v0, v14}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void

    :cond_c
    sget-object v0, Lga/H;->DIRECTION:Lga/H;

    if-ne v11, v0, :cond_e

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v4, "up"

    const-string v5, "down"

    const-string v0, "forward"

    const-string v1, "back"

    const-string v2, "left"

    const-string v3, "right"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    :goto_7
    const/4 v0, 0x6

    if-ge v13, v0, :cond_d

    aget-object v3, v7, v13

    new-instance v11, Ldd/b;

    invoke-static {v3}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Le6/o;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le6/o;-><init>(Le6/E;ILjava/lang/String;ILga/H;)V

    invoke-direct {v11, v14, v15}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_d
    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v8, v0, v6}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void

    :cond_e
    sget-object v0, Lga/H;->BLENDING_MODE:Lga/H;

    if-ne v11, v0, :cond_10

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {}, Lec/a;->values()[Lec/a;

    move-result-object v7

    array-length v11, v7

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v11, :cond_f

    aget-object v3, v7, v13

    new-instance v14, Ldd/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le6/E;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v5, Le6/p;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p2

    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le6/p;-><init>(Le6/E;ILec/a;ILga/H;)V

    invoke-direct {v14, v15, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    goto :goto_8

    :cond_f
    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v8, v0, v6}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void

    :cond_10
    sget-object v0, Lga/H;->UV_SOURCE:Lga/H;

    if-ne v11, v0, :cond_12

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {}, Lcc/e;->values()[Lcc/e;

    move-result-object v7

    array-length v11, v7

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v11, :cond_11

    aget-object v3, v7, v13

    new-instance v14, Ldd/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le6/E;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v5, Le6/q;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p2

    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le6/q;-><init>(Le6/E;ILcc/e;ILga/H;)V

    invoke-direct {v14, v15, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    goto :goto_9

    :cond_11
    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v8, v0, v6}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void

    :cond_12
    sget-object v0, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    if-ne v11, v0, :cond_14

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {}, LJAVARuntime/InputDialog$Type;->values()[LJAVARuntime/InputDialog$Type;

    move-result-object v7

    array-length v11, v7

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v11, :cond_13

    aget-object v3, v7, v13

    new-instance v14, Ldd/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le6/E;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v5, Le6/r;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p2

    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le6/r;-><init>(Le6/E;ILJAVARuntime/InputDialog$Type;ILga/H;)V

    invoke-direct {v14, v15, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    goto :goto_a

    :cond_13
    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v8, v0, v6}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void

    :cond_14
    sget-object v0, Lga/H;->POPUP_DIALOG_TYPE:Lga/H;

    if-ne v11, v0, :cond_16

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {}, Lga/G;->values()[Lga/G;

    move-result-object v7

    array-length v11, v7

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v11, :cond_15

    aget-object v3, v7, v13

    new-instance v14, Ldd/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le6/E;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v5, Le6/s;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v4, p2

    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le6/s;-><init>(Le6/E;ILga/G;ILga/H;)V

    invoke-direct {v14, v15, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    goto :goto_b

    :cond_15
    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v8, v0, v6}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void

    :cond_16
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    invoke-virtual {v7, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/PopupWindow;

    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    const/4 v2, -0x2

    invoke-direct {v6, v7, v0, v2, v14}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {v6, v14}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v6, v14}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    sget-object v0, Lga/H;->NUMBER:Lga/H;

    if-ne v11, v0, :cond_18

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$k;

    move-object/from16 v5, p0

    invoke-direct {v2, v5, v12, v9, v10}, Le6/E$k;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v0, v14}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    :cond_17
    :goto_c
    move-object v10, v6

    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_18
    move-object/from16 v5, p0

    sget-object v0, Lga/H;->COLOR:Lga/H;

    if-ne v11, v0, :cond_19

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$v;

    invoke-direct {v2, v5, v12, v9, v10}, Le6/E$v;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v0, v14}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_c

    :cond_19
    sget-object v0, Lga/H;->TEXT:Lga/H;

    if-ne v11, v0, :cond_1a

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$D;

    invoke-direct {v2, v5, v12, v9, v10}, Le6/E$D;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->SLStringWrap:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v0, v14}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_c

    :cond_1a
    sget-object v0, Lga/H;->BOOLEAN:Lga/H;

    if-ne v11, v0, :cond_1b

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$E;

    invoke-direct {v2, v5, v12, v9, v10}, Le6/E$E;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->SLBooleanWrap:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v0, v14}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_c

    :cond_1b
    sget-object v0, Lga/H;->GAME_OBJECT:Lga/H;

    if-ne v11, v0, :cond_1c

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$F;

    invoke-direct {v2, v5, v12, v9, v10}, Le6/E$F;-><init>(Le6/E;IILga/H;)V

    invoke-direct {v0, v2, v1}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto/16 :goto_c

    :cond_1c
    sget-object v0, Lga/H;->QUATERNION:Lga/H;

    const-string v2, "Z"

    const-string v3, "Y"

    const-string v4, "X"

    const/4 v15, 0x3

    if-ne v11, v0, :cond_1e

    new-instance v11, LC5/b;

    sget-object v0, LC5/b$a;->Vector:LC5/b$a;

    new-array v13, v15, [LC5/b;

    invoke-direct {v11, v1, v0, v13}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v15, :cond_1d

    iget-object v3, v11, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v1, Le6/E$G;

    move-object v0, v1

    move-object v15, v1

    move-object/from16 v1, p0

    move-object v14, v2

    move/from16 v2, p2

    move-object/from16 v18, v3

    move v3, v4

    move/from16 v19, v4

    move v4, v12

    move-object v8, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Le6/E$G;-><init>(Le6/E;IIILga/H;)V

    aget-object v0, v13, v19

    sget-object v1, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v14, v15, v0, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    aput-object v1, v18, v19

    add-int/lit8 v4, v19, 0x1

    move-object v5, v8

    const/4 v14, 0x1

    const/4 v15, 0x3

    move-object/from16 v8, p1

    goto :goto_d

    :cond_1d
    move-object v8, v5

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v7, v0, v11, v2, v1}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    move-object v10, v6

    goto/16 :goto_13

    :cond_1e
    move-object v8, v5

    sget-object v0, Lga/H;->FLOAT2:Lga/H;

    if-eq v11, v0, :cond_24

    sget-object v5, Lga/H;->FLOAT3:Lga/H;

    if-eq v11, v5, :cond_24

    sget-object v5, Lga/H;->FLOAT4:Lga/H;

    if-ne v11, v5, :cond_1f

    goto/16 :goto_e

    :cond_1f
    sget-object v0, Lga/H;->TEXTURE:Lga/H;

    if-ne v11, v0, :cond_20

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$I;

    invoke-direct {v2, v8, v12, v9, v10}, Le6/E$I;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto/16 :goto_c

    :cond_20
    sget-object v0, Lga/H;->CUBEMAP:Lga/H;

    if-ne v11, v0, :cond_21

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$J;

    invoke-direct {v2, v8, v12, v9, v10}, Le6/E$J;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto/16 :goto_c

    :cond_21
    sget-object v0, Lga/H;->OBJECT_FILE:Lga/H;

    if-ne v11, v0, :cond_22

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$a;

    invoke-direct {v2, v8, v12, v9, v10}, Le6/E$a;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->InputFile:LC5/b$a;

    const-string v4, ".go"

    invoke-direct {v0, v2, v1, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto/16 :goto_c

    :cond_22
    sget-object v0, Lga/H;->WORLD_FILE:Lga/H;

    if-ne v11, v0, :cond_23

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$b;

    invoke-direct {v2, v8, v12, v9, v10}, Le6/E$b;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->InputFile:LC5/b$a;

    const-string v4, ".world"

    invoke-direct {v0, v2, v1, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto/16 :goto_c

    :cond_23
    sget-object v0, Lga/H;->SOUND_FILE:Lga/H;

    if-ne v11, v0, :cond_17

    new-instance v0, LC5/b;

    new-instance v2, Le6/E$c;

    invoke-direct {v2, v8, v12, v9, v10}, Le6/E$c;-><init>(Le6/E;IILga/H;)V

    sget-object v3, LC5/b$a;->InputFile:LC5/b$a;

    const-string v4, ".imvs"

    const-string v5, ".sound"

    const-string v9, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

    filled-new-array {v9, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LC5/b;->l(Z)LC5/b;

    move-result-object v16

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v17, 0x0

    move-object v14, v7

    invoke-static/range {v14 .. v19}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto/16 :goto_c

    :cond_24
    :goto_e
    const/4 v13, 0x2

    if-ne v11, v0, :cond_25

    move v14, v13

    goto :goto_f

    :cond_25
    sget-object v0, Lga/H;->FLOAT3:Lga/H;

    if-ne v11, v0, :cond_26

    const/4 v14, 0x3

    goto :goto_f

    :cond_26
    const/4 v14, 0x4

    :goto_f
    new-instance v15, LC5/b;

    sget-object v0, LC5/b$a;->Vector:LC5/b$a;

    new-array v5, v14, [LC5/b;

    invoke-direct {v15, v1, v0, v5}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    if-ne v14, v13, :cond_27

    new-array v0, v13, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v5, 0x1

    aput-object v3, v0, v5

    :goto_10
    move-object v13, v0

    goto :goto_11

    :cond_27
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-ne v14, v0, :cond_28

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v1

    aput-object v3, v0, v5

    aput-object v2, v0, v13

    goto :goto_10

    :cond_28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v1

    aput-object v3, v0, v5

    aput-object v2, v0, v13

    const-string v1, "W"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    goto :goto_10

    :goto_11
    const/4 v5, 0x0

    :goto_12
    if-ge v5, v14, :cond_29

    iget-object v4, v15, LC5/b;->p:[LC5/b;

    new-instance v3, LC5/b;

    new-instance v2, Le6/E$H;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v8, v2

    move/from16 v2, p2

    move-object v9, v3

    move-object v3, v11

    move-object/from16 v16, v4

    move v4, v5

    move/from16 v18, v5

    move v5, v12

    move-object v10, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Le6/E$H;-><init>(Le6/E;ILga/H;IILga/H;)V

    aget-object v0, v13, v18

    sget-object v1, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v9, v8, v0, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    aput-object v1, v16, v18

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object v6, v10

    move-object/from16 v10, p3

    goto :goto_12

    :cond_29
    move-object v10, v6

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v7, v0, v15, v2, v1}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    :goto_13
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v10, v1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_2a
    :goto_14
    return-void
.end method

.method public final b0(I)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputIndex"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    sget-object v2, Lga/H;->QUATERNION:Lga/H;

    if-eq v1, v2, :cond_2

    sget-object v2, Lga/H;->FLOAT4:Lga/H;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, p1, v1, v0, v3}, Lga/m;->e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lga/m;->f0(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object p1

    :cond_3
    sget-object v0, Lga/H;->QUATERNION:Lga/H;

    invoke-virtual {p0, p1, v0}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Le6/E;->g1(Ljava/lang/String;I)[F

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_4

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    aget v4, v0, v4

    aget v3, v0, v3

    aget v2, v0, v2

    aget v0, v0, v1

    invoke-direct {p1, v4, v3, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object p1

    :cond_4
    invoke-static {p1, v4}, Le6/E;->g1(Ljava/lang/String;I)[F

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    aget v3, v0, v3

    aget v2, v0, v2

    aget v0, v0, v1

    invoke-virtual {p1, v3, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-object p1

    :cond_5
    invoke-static {p1}, Le6/E;->f1(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object v0

    :cond_6
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    return-object p1
.end method

.method public final b1()V
    .locals 8

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le6/E;->o:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v1, p0, Le6/E;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Le6/E;->p:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, p0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    iget-object v3, p0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Le6/E;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Le6/E;->K0()I

    move-result v3

    move v4, v2

    move v5, v4

    :goto_1
    iget-object v6, p0, Le6/E;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_6

    iget-object v6, p0, Le6/E;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, p0, Le6/E;->p:Landroid/widget/LinearLayout;

    if-eq v6, v7, :cond_5

    iget-object v7, p0, Le6/E;->k:Landroid/widget/TextView;

    if-ne v6, v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget v4, p0, Le6/E;->u:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p0, v2}, Le6/E;->D(Z)V

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v1, :cond_8

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Le6/E;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final c0(ILga/H;)[F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "type"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    sget-object v5, Lga/H;->QUATERNION:Lga/H;

    if-ne p2, v5, :cond_0

    invoke-virtual {p0, p1}, Le6/E;->b0(I)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p1

    new-array v3, v3, [F

    aput p2, v3, v2

    aput v5, v3, v4

    aput v6, v3, v1

    aput p1, v3, v0

    return-object v3

    :cond_0
    sget-object v5, Lga/H;->DIRECTION:Lga/H;

    if-ne p2, v5, :cond_3

    iget-object p2, p0, Le6/E;->c:Le6/X;

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v5

    :goto_0
    invoke-virtual {p0, p1}, Le6/E;->Y(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v5

    :cond_2
    invoke-static {p1, v5}, Lga/m;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    new-array v3, v3, [F

    aput p2, v3, v2

    aput v5, v3, v4

    aput p1, v3, v1

    const/4 p1, 0x0

    aput p1, v3, v0

    return-object v3

    :cond_3
    sget-object v5, Lga/H;->FLOAT2:Lga/H;

    if-ne p2, v5, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    sget-object v5, Lga/H;->FLOAT3:Lga/H;

    if-ne p2, v5, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    iget-object v6, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v6

    new-array v3, v3, [F

    if-eqz v6, :cond_6

    iget p1, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    aput p1, v3, v2

    iget p1, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    aput p1, v3, v4

    iget p1, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    aput p1, v3, v1

    iget p1, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    aput p1, v3, v0

    return-object v3

    :cond_6
    invoke-virtual {p0, p1, p2}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Le6/E;->g1(Ljava/lang/String;I)[F

    move-result-object p2

    if-eqz p2, :cond_8

    :goto_2
    if-ge v2, v5, :cond_7

    aget p1, p2, v2

    aput p1, v3, v2

    add-int/2addr v2, v4

    goto :goto_2

    :cond_7
    return-object v3

    :cond_8
    invoke-static {p1}, Le6/E;->f1(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_9

    :goto_3
    if-ge v2, v5, :cond_9

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v3, v2

    add-int/2addr v2, v4

    goto :goto_3

    :cond_9
    return-object v3
.end method

.method public final c1()V
    .locals 2

    iget-object v0, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Le6/E;->n:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Le6/E;->J0(Landroid/widget/LinearLayout;)I

    move-result v0

    iget-object v1, p0, Le6/E;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Le6/E;->J0(Landroid/widget/LinearLayout;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_1
    iget-object v1, p0, Le6/E;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Le6/E;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d0(Lga/H;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lga/H;->NUMBER:Lga/H;

    return-object p1

    :cond_0
    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-ne p1, v0, :cond_1

    sget-object p1, Lga/H;->NUMBER:Lga/H;

    :cond_1
    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-virtual {p0}, Le6/E;->R()V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Le6/E;->P:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Le6/E;->h:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    move v6, v1

    move v7, v2

    :goto_0
    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v0

    move v6, v0

    move v7, v6

    goto :goto_0

    :goto_1
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    int-to-float v11, v0

    iget-object v12, p0, Le6/E;->g:Landroid/graphics/Paint;

    move-object v5, p1

    move v10, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public e0(I)Le6/K;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->I:[Le6/K;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f0(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiIndex"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result p1

    return p1
.end method

.method public g0(I)Le6/K;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->x:[Le6/K;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBranchAnchorLocal()Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Le6/E;->getBranchInputAnchorLocal()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getBranchInputAnchorLocal()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Le6/E;->D:Landroid/view/View;

    invoke-virtual {p0, v0}, Le6/E;->V(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getBranchInputSocket()Le6/K;
    .locals 1

    iget-object v0, p0, Le6/E;->z:Le6/K;

    return-object v0
.end method

.method public getBranchOutputAnchorLocal()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Le6/E;->E:Landroid/view/View;

    invoke-virtual {p0, v0}, Le6/E;->V(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getBranchOutputSocket()Le6/K;
    .locals 1

    iget-object v0, p0, Le6/E;->A:Le6/K;

    return-object v0
.end method

.method public getBranchSocket()Le6/K;
    .locals 1

    invoke-virtual {p0}, Le6/E;->getBranchInputSocket()Le6/K;

    move-result-object v0

    return-object v0
.end method

.method public getCardLeftLocal()F
    .locals 1

    iget-object v0, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCardRightLocal()F
    .locals 1

    iget-object v0, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getInputSockets()[Le6/K;
    .locals 1

    iget-object v0, p0, Le6/E;->x:[Le6/K;

    return-object v0
.end method

.method public getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 1

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    return-object v0
.end method

.method public getOutputSockets()[Le6/K;
    .locals 1

    iget-object v0, p0, Le6/E;->y:[Le6/K;

    return-object v0
.end method

.method public h0(I)Le6/K;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slotIndex"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le6/E;->I0(I)I

    move-result p1

    invoke-virtual {p0, p1}, Le6/E;->g0(I)Le6/K;

    move-result-object p1

    return-object p1
.end method

.method public final h1(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasRawEntries"
        }
    .end annotation

    iget-boolean v0, p0, Le6/E;->N:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-boolean v0, p0, Le6/E;->O:Z

    iget-object v2, p0, Le6/E;->m:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Le6/E;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public i0(I)Le6/K;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->y:[Le6/K;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i1(ILga/H;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "type"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Le6/E;->G:[Landroid/widget/TextView;

    if-eqz v3, :cond_4c

    if-ltz v1, :cond_4c

    array-length v4, v3

    if-lt v1, v4, :cond_0

    goto/16 :goto_29

    :cond_0
    aget-object v3, v3, v1

    if-eqz v3, :cond_4c

    if-nez v2, :cond_1

    goto/16 :goto_29

    :cond_1
    invoke-virtual {v0, v2}, Le6/E;->d0(Lga/H;)Lga/H;

    move-result-object v4

    iget-object v5, v0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual/range {p0 .. p1}, Le6/E;->H0(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->D(I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v0, v1, v4}, Le6/E;->j0(ILga/H;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_0
    sget-object v8, Lga/H;->MATERIAL:Lga/H;

    const/4 v10, 0x3

    const-string v11, "Owner"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v4, v8, :cond_6

    if-eqz v5, :cond_3

    iget-object v8, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v8, v7

    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move v14, v12

    goto/16 :goto_a

    :cond_5
    :goto_3
    move-object v8, v11

    goto :goto_2

    :cond_6
    if-nez v5, :cond_12

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    sget-object v8, Lga/H;->NUMBER:Lga/H;

    if-ne v4, v8, :cond_8

    invoke-static {v7}, Le6/E;->f1(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    move v8, v12

    goto/16 :goto_9

    :cond_8
    sget-object v8, Lga/H;->COLOR:Lga/H;

    if-ne v4, v8, :cond_9

    invoke-static {v7}, Le6/E;->e1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_9
    sget-object v8, Lga/H;->DIRECTION:Lga/H;

    if-ne v4, v8, :cond_a

    invoke-static {v7}, Lga/m;->l(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v7, v10}, Le6/E;->g1(Ljava/lang/String;I)[F

    move-result-object v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_a
    sget-object v8, Lga/H;->FLOAT2:Lga/H;

    if-eq v4, v8, :cond_c

    sget-object v14, Lga/H;->FLOAT3:Lga/H;

    if-eq v4, v14, :cond_c

    sget-object v14, Lga/H;->FLOAT4:Lga/H;

    if-eq v4, v14, :cond_c

    sget-object v14, Lga/H;->QUATERNION:Lga/H;

    if-ne v4, v14, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    move v8, v13

    goto :goto_9

    :cond_c
    :goto_5
    if-ne v4, v8, :cond_d

    const/4 v8, 0x2

    goto :goto_6

    :cond_d
    sget-object v8, Lga/H;->FLOAT3:Lga/H;

    if-ne v4, v8, :cond_e

    move v8, v10

    goto :goto_6

    :cond_e
    const/4 v8, 0x4

    :goto_6
    invoke-static {v7, v8}, Le6/E;->g1(Ljava/lang/String;I)[F

    move-result-object v8

    if-nez v8, :cond_10

    invoke-static {v7}, Le6/E;->f1(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_f

    goto :goto_7

    :cond_f
    move v8, v12

    goto :goto_8

    :cond_10
    :goto_7
    move v8, v13

    :goto_8
    sget-object v14, Lga/H;->QUATERNION:Lga/H;

    if-ne v4, v14, :cond_11

    if-nez v8, :cond_b

    invoke-static {v7, v10}, Le6/E;->g1(Ljava/lang/String;I)[F

    move-result-object v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_11
    :goto_9
    if-nez v8, :cond_12

    invoke-static {v7}, Le6/E;->N0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-static {v7}, Le6/E;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_12
    move-object v8, v6

    move v14, v13

    :goto_a
    iget-object v15, v0, Le6/E;->J:[Z

    if-eqz v15, :cond_13

    if-ltz v1, :cond_13

    array-length v10, v15

    if-ge v1, v10, :cond_13

    aput-boolean v14, v15, v1

    :cond_13
    const-string v10, "-"

    const/16 v15, 0x8

    if-nez v14, :cond_17

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    if-eqz v8, :cond_14

    invoke-static {v8}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_14
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_15

    if-ltz v1, :cond_15

    array-length v3, v2

    if-ge v1, v3, :cond_15

    aget-object v1, v2, v1

    goto :goto_b

    :cond_15
    move-object v1, v6

    :goto_b
    if-eqz v1, :cond_16

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    return-void

    :cond_17
    invoke-static {v4}, Lga/d;->n(Lga/H;)Z

    move-result v8

    const-string v14, ""

    if-eqz v8, :cond_25

    if-eqz v5, :cond_18

    iget-object v8, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    goto :goto_c

    :cond_18
    move-object v8, v7

    :goto_c
    if-eqz v5, :cond_19

    iget-object v14, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->jsonData:Ljava/lang/String;

    :cond_19
    const-string v9, "[Pick first]"

    if-eqz v14, :cond_1a

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1b

    :cond_1a
    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_d

    :cond_1b
    move v10, v12

    goto :goto_e

    :cond_1c
    :goto_d
    move v10, v13

    :goto_e
    sget-object v12, Lga/H;->ANY_COMPONENT:Lga/H;

    if-ne v4, v12, :cond_1d

    if-eqz v14, :cond_1d

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v12, v13

    goto :goto_f

    :cond_1d
    const/4 v12, 0x0

    :goto_f
    if-eqz v10, :cond_1e

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_1e
    if-eqz v12, :cond_1f

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_1f
    invoke-virtual {v0, v5, v2, v7}, Le6/E;->U0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lga/H;Ljava/lang/String;)LJAVARuntime/Component;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-static {v2}, Lga/d;->p(LJAVARuntime/Component;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_20
    if-eqz v8, :cond_21

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    move-object v8, v9

    :cond_22
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_23

    if-ltz v1, :cond_23

    array-length v3, v2

    if-ge v1, v3, :cond_23

    aget-object v1, v2, v1

    goto :goto_11

    :cond_23
    move-object v1, v6

    :goto_11
    if-eqz v1, :cond_24

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_24
    return-void

    :cond_25
    sget-object v8, Le6/E$C;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    const/16 v8, 0x5c

    const/16 v12, 0x2f

    const-string v9, ","

    const/4 v15, 0x6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_29

    :pswitch_0
    if-eqz v5, :cond_26

    iget-object v2, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v2, :cond_26

    move-object v14, v2

    :cond_26
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_27
    invoke-virtual {v14, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v14, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ltz v2, :cond_28

    add-int/2addr v2, v13

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_28
    invoke-static {v14}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_29

    if-ltz v1, :cond_29

    array-length v3, v2

    if-ge v1, v3, :cond_29

    aget-object v1, v2, v1

    goto :goto_13

    :cond_29
    move-object v1, v6

    :goto_13
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Le6/E;->Z(ILga/H;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le6/E;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_2a

    if-ltz v1, :cond_2a

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    aget-object v1, v2, v1

    goto :goto_14

    :cond_2a
    move-object v1, v6

    :goto_14
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_2
    invoke-virtual/range {p0 .. p2}, Le6/E;->Z(ILga/H;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le6/E;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_2b

    if-ltz v1, :cond_2b

    array-length v3, v2

    if-ge v1, v3, :cond_2b

    aget-object v1, v2, v1

    goto :goto_15

    :cond_2b
    move-object v1, v6

    :goto_15
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Le6/E;->Z(ILga/H;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le6/E;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_2c

    if-ltz v1, :cond_2c

    array-length v3, v2

    if-ge v1, v3, :cond_2c

    aget-object v1, v2, v1

    goto :goto_16

    :cond_2c
    move-object v1, v6

    :goto_16
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_4
    if-eqz v5, :cond_2d

    iget-object v4, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v4, :cond_2d

    move-object v14, v4

    :cond_2d
    iget-object v4, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v4, :cond_2e

    if-ltz v1, :cond_2e

    array-length v5, v4

    if-ge v1, v5, :cond_2e

    aget-object v1, v4, v1

    goto :goto_17

    :cond_2e
    move-object v1, v6

    :goto_17
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :cond_2f
    invoke-virtual {v14, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v14, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ltz v4, :cond_30

    add-int/2addr v4, v13

    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    :cond_30
    move-object v4, v14

    :goto_18
    invoke-static {v4}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2, v14}, Le6/E;->k1(Landroid/widget/ImageView;Lga/H;Ljava/lang/String;)V

    goto/16 :goto_29

    :pswitch_5
    if-eqz v5, :cond_31

    iget-object v2, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v2, :cond_31

    move-object v14, v2

    :cond_31
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_32
    invoke-virtual {v14, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v14, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ltz v2, :cond_33

    add-int/2addr v2, v13

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_33
    invoke-static {v14}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_34

    if-ltz v1, :cond_34

    array-length v3, v2

    if-ge v1, v3, :cond_34

    aget-object v1, v2, v1

    goto :goto_1a

    :cond_34
    move-object v1, v6

    :goto_1a
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_6
    if-eqz v5, :cond_35

    iget-object v2, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v2, :cond_35

    move-object v14, v2

    :cond_35
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_36
    invoke-virtual {v14, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v14, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ltz v2, :cond_37

    add-int/2addr v2, v13

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_37
    invoke-static {v14}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1b
    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_38

    if-ltz v1, :cond_38

    array-length v3, v2

    if-ge v1, v3, :cond_38

    aget-object v1, v2, v1

    goto :goto_1c

    :cond_38
    move-object v1, v6

    :goto_1c
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_7
    if-eqz v5, :cond_39

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    goto :goto_1d

    :cond_39
    if-eqz v7, :cond_3a

    goto :goto_1d

    :cond_3a
    move-object v7, v11

    :goto_1d
    if-eqz v7, :cond_3c

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_1e

    :cond_3b
    move-object v11, v7

    :cond_3c
    :goto_1e
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_3d

    if-ltz v1, :cond_3d

    array-length v3, v2

    if-ge v1, v3, :cond_3d

    aget-object v1, v2, v1

    goto :goto_1f

    :cond_3d
    move-object v1, v6

    :goto_1f
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_8
    invoke-virtual {v0, v5}, Le6/E;->V0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    :cond_3e
    const-string v2, "owner"

    if-eqz v5, :cond_3f

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    goto :goto_20

    :cond_3f
    if-eqz v7, :cond_40

    goto :goto_20

    :cond_40
    move-object v7, v2

    :goto_20
    if-eqz v7, :cond_42

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_21

    :cond_41
    move-object v2, v7

    :cond_42
    :goto_21
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_22
    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_43

    if-ltz v1, :cond_43

    array-length v3, v2

    if-ge v1, v3, :cond_43

    aget-object v1, v2, v1

    goto :goto_23

    :cond_43
    move-object v1, v6

    :goto_23
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_9
    if-eqz v5, :cond_44

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    goto :goto_24

    :cond_44
    if-eqz v7, :cond_45

    goto :goto_24

    :cond_45
    move-object v7, v14

    :goto_24
    if-eqz v7, :cond_47

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_25

    :cond_46
    move-object v10, v7

    :cond_47
    :goto_25
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    :pswitch_a
    invoke-virtual/range {p0 .. p1}, Le6/E;->b0(I)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->D()F

    move-result v4

    invoke-static {v4, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v4

    invoke-static {v4, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F()F

    move-result v1

    invoke-static {v1, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    :pswitch_b
    sget-object v2, Lga/H;->FLOAT4:Lga/H;

    invoke-virtual {v0, v1, v2}, Le6/E;->c0(ILga/H;)[F

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-static {v4, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v13

    invoke-static {v4, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v4, v1, v4

    invoke-static {v4, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget v1, v1, v4

    invoke-static {v1, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    :pswitch_c
    invoke-virtual/range {p0 .. p1}, Le6/E;->Y(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v2, :cond_48

    if-ltz v1, :cond_48

    array-length v3, v2

    if-ge v1, v3, :cond_48

    aget-object v1, v2, v1

    goto :goto_26

    :cond_48
    move-object v1, v6

    :goto_26
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29

    :pswitch_d
    sget-object v2, Lga/H;->FLOAT3:Lga/H;

    invoke-virtual {v0, v1, v2}, Le6/E;->c0(ILga/H;)[F

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-static {v4, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v13

    invoke-static {v4, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-static {v1, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    :pswitch_e
    sget-object v2, Lga/H;->FLOAT2:Lga/H;

    invoke-virtual {v0, v1, v2}, Le6/E;->c0(ILga/H;)[F

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-static {v4, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v13

    invoke-static {v1, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    :pswitch_f
    if-eqz v5, :cond_49

    iget-object v2, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    sget-object v4, Lga/H;->COLOR:Lga/H;

    if-ne v2, v4, :cond_49

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v4, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->w:F

    iget v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    iget v8, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->y:F

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->z:F

    invoke-direct {v2, v4, v7, v8, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    goto :goto_27

    :cond_49
    invoke-virtual/range {p0 .. p1}, Le6/E;->X(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    :goto_27
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Le6/E;->H:[Landroid/widget/ImageView;

    if-eqz v3, :cond_4a

    if-ltz v1, :cond_4a

    array-length v4, v3

    if-ge v1, v4, :cond_4a

    aget-object v6, v3, v1

    :cond_4a
    if-eqz v6, :cond_4c

    const v1, 0x7f0700c2

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v6, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29

    :pswitch_10
    invoke-virtual/range {p0 .. p1}, Le6/E;->W(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    :pswitch_11
    if-eqz v5, :cond_4b

    iget v1, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->x:F

    goto :goto_28

    :cond_4b
    invoke-virtual/range {p0 .. p1}, Le6/E;->a0(I)F

    move-result v1

    :goto_28
    invoke-static {v1, v15}, Le6/E;->T(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4c
    :goto_29
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j0(ILga/H;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    instance-of v1, v0, Lga/F;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lga/F;

    invoke-virtual {p0, p1}, Le6/E;->H0(I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Lga/F;->a(ILga/H;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j1()V
    .locals 2

    iget-object v0, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Le6/E;->v:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Le6/E;->w:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final k0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lga/H;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "slot",
            "effectiveType",
            "input"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v2

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    if-nez p3, :cond_4

    const-string p1, "item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    sget-object p1, Lga/H;->DYNAMIC:Lga/H;

    if-eq p2, p1, :cond_4

    invoke-static {p2}, Lga/a;->d(Lga/H;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez p3, :cond_7

    sget-object p1, Lga/H;->FLOAT2:Lga/H;

    if-eq p2, p1, :cond_6

    sget-object p1, Lga/H;->FLOAT3:Lga/H;

    if-eq p2, p1, :cond_6

    sget-object p1, Lga/H;->DIRECTION:Lga/H;

    if-eq p2, p1, :cond_6

    sget-object p1, Lga/H;->FLOAT4:Lga/H;

    if-eq p2, p1, :cond_6

    sget-object p1, Lga/H;->QUATERNION:Lga/H;

    if-ne p2, p1, :cond_5

    goto :goto_3

    :cond_5
    sget-object p1, Lga/H;->LIST:Lga/H;

    if-ne p2, p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lga/C;->j(Lga/H;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    return-object v0
.end method

.method public final k1(Landroid/widget/ImageView;Lga/H;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "thumb",
            "type",
            "file"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/storage/emulated/0/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lga/H;->CUBEMAP:Lga/H;

    if-ne p2, v1, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".meta/thumb.png"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1, p3}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-static {v0, p1}, LD7/a;->c(Ljava/io/File;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".texture"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p1, p3}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_1

    :cond_7
    invoke-static {p1, v0}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    :goto_1
    return-void
.end method

.method public final l0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Lga/H;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "slot",
            "effectiveType",
            "input"
        }
    .end annotation

    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    const-string p3, "item"

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object p1, Lga/H;->DYNAMIC:Lga/H;

    if-eq p2, p1, :cond_0

    invoke-static {p2}, Lga/e;->a(Lga/H;)I

    move-result p1

    return p1

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    return p1
.end method

.method public l1()V
    .locals 2

    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->materialGraphPreviewsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Le6/E;->setPreviewEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Le6/E;->setPreviewEnabled(Z)V

    :goto_0
    return-void
.end method

.method public m0(ZI)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "index"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Le6/E;->B:[Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le6/E;->C:[Landroid/view/View;

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    array-length v1, p1

    if-lt p2, v1, :cond_1

    goto :goto_3

    :cond_1
    aget-object p1, p1, p2

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 p2, 0x0

    move-object v1, p1

    move v0, p2

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, p0, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final m1()V
    .locals 3

    iget-object v0, p0, Le6/E;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    iget-object v1, p0, Le6/E;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v2

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Le6/E;->X0()V

    return-void
.end method

.method public n0(ZI)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "index"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Le6/E;->B:[Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le6/E;->C:[Landroid/view/View;

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    array-length v1, p1

    if-lt p2, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object p1, p1, p2

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x1

    aget p2, p2, v1

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    add-float/2addr p2, p1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final o0(Landroid/widget/LinearLayout;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->I(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LC5/b;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v4, LC5/b;->n:LC5/b$a;

    sget-object v2, LC5/b$a;->Vector:LC5/b$a;

    if-ne v0, v2, :cond_3

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v0, v4, v2, v3}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p2, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p1, :cond_0

    invoke-virtual {p0, p1}, Le6/E;->Y0(I)V

    :cond_0
    invoke-virtual {p0}, Le6/E;->O0()V

    invoke-virtual {p0}, Le6/E;->c1()V

    invoke-virtual {p0}, Le6/E;->X0()V

    return-void
.end method

.method public final p0(Landroid/view/View;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "localX",
            "localY"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    cmpg-float p1, p3, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q0()Z
    .locals 1

    iget-boolean v0, p0, Le6/E;->P:Z

    return v0
.end method

.method public r0(FF)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "localX",
            "localY"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_5

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Le6/E;->i:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Le6/E;->p0(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Le6/E;->F:[Landroid/view/View;

    if-eqz v0, :cond_5

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Le6/E;->p0(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v2
.end method

.method public final synthetic s0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    return v0

    :cond_0
    iget-boolean p1, p0, Le6/E;->W:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Le6/E;->U:F

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Le6/E;->V:F

    sub-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Le6/E;->U:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Le6/E;->V:F

    invoke-virtual {p0, p1, v0}, Le6/E;->L0(FF)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->j0()V

    :cond_1
    return v1

    :cond_2
    iput-boolean v0, p0, Le6/E;->W:Z

    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Le6/E;->r0(FF)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->getSelectedNodeView()Le6/E;

    move-result-object p1

    if-ne p1, p0, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    iget-object v2, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v2, p0}, Le6/X;->r0(Le6/E;)V

    iget-object v2, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v2}, Le6/X;->T()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v0, p0, Le6/E;->W:Z

    return v1

    :cond_6
    iput-boolean p1, p0, Le6/E;->W:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Le6/E;->U:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Le6/E;->V:F

    return v1
.end method

.method public setBranchInputSocket(Le6/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    iput-object p1, p0, Le6/E;->z:Le6/K;

    return-void
.end method

.method public setBranchOutputSocket(Le6/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    iput-object p1, p0, Le6/E;->A:Le6/K;

    return-void
.end method

.method public setBranchSocket(Le6/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le6/E;->setBranchInputSocket(Le6/K;)V

    return-void
.end method

.method public setInputSockets([Le6/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sockets"
        }
    .end annotation

    iput-object p1, p0, Le6/E;->x:[Le6/K;

    return-void
.end method

.method public setOutputSockets([Le6/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sockets"
        }
    .end annotation

    iput-object p1, p0, Le6/E;->y:[Le6/K;

    return-void
.end method

.method public setPreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bmp"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Le6/E;->w:Z

    iget-object v0, p0, Le6/E;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Le6/E;->j1()V

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-object v0, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Le6/E;->v:Z

    invoke-virtual {p0}, Le6/E;->j1()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    iput-boolean p1, p0, Le6/E;->P:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final synthetic t0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->exposeInInspector:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->exposeInInspector:Z

    invoke-virtual {p0}, Le6/E;->E()V

    invoke-virtual {p0}, Le6/E;->J()V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method

.method public final synthetic u0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    return v0

    :cond_0
    iget-boolean p1, p0, Le6/E;->W:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Le6/E;->U:F

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Le6/E;->V:F

    sub-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Le6/E;->U:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Le6/E;->V:F

    invoke-virtual {p0, p1, v0}, Le6/E;->L0(FF)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->j0()V

    :cond_1
    return v1

    :cond_2
    iput-boolean v0, p0, Le6/E;->W:Z

    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Le6/E;->r0(FF)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->getSelectedNodeView()Le6/E;

    move-result-object p1

    if-ne p1, p0, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    iget-object v2, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v2, p0}, Le6/X;->r0(Le6/E;)V

    iget-object v2, p0, Le6/E;->c:Le6/X;

    invoke-virtual {v2}, Le6/X;->T()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v0, p0, Le6/E;->W:Z

    return v1

    :cond_6
    iput-boolean p1, p0, Le6/E;->W:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Le6/E;->U:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Le6/E;->V:F

    return v1
.end method

.method public final synthetic v0(ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Le6/E;->J:[Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-virtual {p0, p3, p1, p2}, Le6/E;->a1(Landroid/view/View;ILga/H;)V

    return-void
.end method

.method public final synthetic w0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le6/E;->S:Z

    invoke-virtual {p0}, Le6/E;->b1()V

    return-void
.end method

.method public final synthetic x0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Le6/E;->Q:Z

    iget-object v0, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v1, p0, Le6/E;->R:I

    if-lez v1, :cond_3

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Le6/E;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public final synthetic y0(Ljava/util/List;Landroid/widget/LinearLayout;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/E;->Z0(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final synthetic z0(ILcc/e;ILga/H;Landroid/view/View;)V
    .locals 1

    iget-object p5, p0, Le6/E;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    sget-object v0, Lga/H;->UV_SOURCE:Lga/H;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->k(ILga/H;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {p0, p3, p4}, Le6/E;->i1(ILga/H;)V

    iget-object p1, p0, Le6/E;->c:Le6/X;

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method
