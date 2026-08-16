.class public LN6/p;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:[Z

.field public B:[I

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:I

.field public H:F

.field public I:F

.field public J:Z

.field public final b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

.field public final c:LN6/H;

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

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:[LN6/w;

.field public r:[LN6/w;

.field public s:LN6/w;

.field public t:[Landroid/view/View;

.field public u:[Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:[Landroid/view/View;

.field public x:[Landroid/widget/TextView;

.field public y:[Landroid/widget/ImageView;

.field public z:[LN6/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;LN6/H;)V
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

    iput-object p1, p0, LN6/p;->d:Landroid/graphics/drawable/GradientDrawable;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, LN6/p;->g:Landroid/graphics/Paint;

    const/4 p1, -0x1

    iput p1, p0, LN6/p;->G:I

    iput-object p2, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iput-object p3, p0, LN6/p;->c:LN6/H;

    new-instance p1, LN6/p$k;

    invoke-direct {p1, p0, p3}, LN6/p$k;-><init>(LN6/p;LN6/H;)V

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->E(Ljava/lang/Runnable;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, LN6/p;->s()V

    invoke-virtual {p0}, LN6/p;->f0()V

    return-void
.end method

.method public static B(Ljava/lang/String;)Ljava/lang/String;
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

.method public static C(FI)Ljava/lang/String;
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

    invoke-static {p0}, LN6/p;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(LN6/p;)V
    .locals 0

    invoke-virtual {p0}, LN6/p;->X()V

    return-void
.end method

.method public static synthetic b(LN6/p;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, LN6/p;->T(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LN6/p;->V(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(LN6/p;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/p;->U(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static d0(Ljava/lang/String;)Ljava/lang/String;
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

.method public static synthetic e(LN6/p;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/p;->S(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(LN6/p;)V
    .locals 0

    invoke-virtual {p0}, LN6/p;->e0()V

    return-void
.end method

.method public static synthetic g(LN6/p;I)V
    .locals 0

    invoke-virtual {p0, p1}, LN6/p;->W(I)V

    return-void
.end method

.method public static synthetic h(LN6/p;Ljava/util/List;Landroid/widget/LinearLayout;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LN6/p;->Y(Ljava/util/List;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method public static synthetic i(LN6/p;)V
    .locals 0

    invoke-virtual {p0}, LN6/p;->u0()V

    return-void
.end method

.method public static synthetic j(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LN6/p;->h0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(LN6/p;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
    .locals 0

    iget-object p0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    return-object p0
.end method

.method public static synthetic l(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/p;->r0(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    return-void
.end method

.method public static synthetic m(LN6/p;)LN6/H;
    .locals 0

    iget-object p0, p0, LN6/p;->c:LN6/H;

    return-object p0
.end method

.method public static synthetic n(LN6/p;I)F
    .locals 0

    invoke-virtual {p0, p1}, LN6/p;->D(I)F

    move-result p0

    return p0
.end method

.method public static n0(Ljava/lang/String;)Ljava/lang/String;
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

.method public static synthetic o(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)[F
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/p;->E(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)[F

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/lang/String;)Ljava/lang/Float;
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

.method public static synthetic p(LN6/p;)V
    .locals 0

    invoke-virtual {p0}, LN6/p;->t()V

    return-void
.end method

.method public static p0(Ljava/lang/String;I)[F
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

    invoke-static {p0}, LN6/p;->o0(Ljava/lang/String;)Ljava/lang/Float;

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

    invoke-static {v2}, LN6/p;->o0(Ljava/lang/String;)Ljava/lang/Float;

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


# virtual methods
.method public final A()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LN6/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, LN6/p;->f:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN6/p;->r(Z)V

    :cond_0
    return-void
.end method

.method public final D(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputIndex"
        }
    .end annotation

    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {p0, p1}, LN6/p;->Z(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->k(I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    return p1

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {p0, p1, v0}, LN6/p;->L(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN6/p;->o0(Ljava/lang/String;)Ljava/lang/Float;

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

.method public final E(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)[F
    .locals 6
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

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p2, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v4, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {p0, p1}, LN6/p;->Z(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->k(I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object v4

    new-array v1, v1, [F

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget p1, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    aput p1, v1, v5

    iget p1, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->y:F

    const/4 p2, 0x1

    aput p1, v1, p2

    iget p1, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->z:F

    aput p1, v1, v3

    iget p1, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->w:F

    aput p1, v1, v2

    return-object v1

    :cond_2
    invoke-virtual {p0, p1, p2}, LN6/p;->L(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, LN6/p;->p0(Ljava/lang/String;I)[F

    move-result-object p2

    if-eqz p2, :cond_4

    :goto_1
    if-ge v5, v0, :cond_3

    aget p1, p2, v5

    aput p1, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    invoke-static {p1}, LN6/p;->o0(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_2
    if-ge v5, v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method public final F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-object p1
.end method

.method public G(I)LN6/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LN6/p;->z:[LN6/w;

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

.method public H(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiIndex"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN6/p;->Z(I)I

    move-result p1

    return p1
.end method

.method public I(I)LN6/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LN6/p;->q:[LN6/w;

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

.method public J(I)LN6/w;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slotIndex"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN6/p;->a0(I)I

    move-result p1

    invoke-virtual {p0, p1}, LN6/p;->I(I)LN6/w;

    move-result-object p1

    return-object p1
.end method

.method public K(I)LN6/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LN6/p;->r:[LN6/w;

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

.method public final L(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
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

    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/B;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/B;

    invoke-virtual {p0, p1}, LN6/p;->Z(I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/B;->d(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

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

.method public M(ZI)Landroid/graphics/PointF;
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

    iget-object p1, p0, LN6/p;->t:[Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LN6/p;->u:[Landroid/view/View;

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

.method public N(ZI)Landroid/graphics/PointF;
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

    iget-object p1, p0, LN6/p;->t:[Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LN6/p;->u:[Landroid/view/View;

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

.method public final O(Landroid/widget/LinearLayout;)V
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
    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->p(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

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

    if-eqz v0, :cond_5

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
    sget-object v2, LC5/b$a;->Component:LC5/b$a;

    if-ne v0, v2, :cond_4

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, LN6/n;

    invoke-direct {v7, p0}, LN6/n;-><init>(LN6/p;)V

    const/4 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_0

    :cond_4
    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public final P(Landroid/view/View;FF)Z
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

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, LN6/p;->E:Z

    return v0
.end method

.method public R(FF)Z
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
    iget-object v0, p0, LN6/p;->i:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0, p1, p2}, LN6/p;->P(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, LN6/p;->w:[Landroid/view/View;

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
    invoke-virtual {p0, v5, p1, p2}, LN6/p;->P(Landroid/view/View;FF)Z

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

.method public final synthetic S(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
    iget-boolean p1, p0, LN6/p;->J:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, LN6/p;->H:F

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, LN6/p;->I:F

    sub-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, LN6/p;->H:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, LN6/p;->I:F

    invoke-virtual {p0, p1, v0}, LN6/p;->b0(FF)V

    iget-object p1, p0, LN6/p;->c:LN6/H;

    invoke-virtual {p1}, LN6/H;->c0()V

    :cond_1
    return v1

    :cond_2
    iput-boolean v0, p0, LN6/p;->J:Z

    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, LN6/p;->R(FF)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, LN6/p;->c:LN6/H;

    invoke-virtual {p1}, LN6/H;->getSelectedNodeView()LN6/p;

    move-result-object p1

    if-ne p1, p0, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    iget-object v2, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v2, p0}, LN6/H;->i0(LN6/p;)V

    iget-object v2, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v2}, LN6/H;->N()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v0, p0, LN6/p;->J:Z

    return v1

    :cond_6
    iput-boolean p1, p0, LN6/p;->J:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, LN6/p;->H:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, LN6/p;->I:F

    return v1
.end method

.method public final synthetic T(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->exposeInInspector:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->exposeInInspector:Z

    invoke-virtual {p0}, LN6/p;->q()V

    invoke-virtual {p0}, LN6/p;->t()V

    iget-object p1, p0, LN6/p;->c:LN6/H;

    invoke-virtual {p1}, LN6/H;->b0()V

    return-void
.end method

.method public final synthetic U(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
    iget-boolean p1, p0, LN6/p;->J:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, LN6/p;->H:F

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, LN6/p;->I:F

    sub-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, LN6/p;->H:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, LN6/p;->I:F

    invoke-virtual {p0, p1, v0}, LN6/p;->b0(FF)V

    iget-object p1, p0, LN6/p;->c:LN6/H;

    invoke-virtual {p1}, LN6/H;->c0()V

    :cond_1
    return v1

    :cond_2
    iput-boolean v0, p0, LN6/p;->J:Z

    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, LN6/p;->R(FF)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, LN6/p;->c:LN6/H;

    invoke-virtual {p1}, LN6/H;->getSelectedNodeView()LN6/p;

    move-result-object p1

    if-ne p1, p0, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    iget-object v2, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v2, p0}, LN6/H;->i0(LN6/p;)V

    iget-object v2, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v2}, LN6/H;->N()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v0, p0, LN6/p;->J:Z

    return v1

    :cond_6
    iput-boolean p1, p0, LN6/p;->J:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, LN6/p;->H:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, LN6/p;->I:F

    return v1
.end method

.method public final synthetic V(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LN6/p;->A:[Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3, p1, p2}, LN6/p;->l0(Landroid/view/View;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    return-void
.end method

.method public final synthetic W(I)V
    .locals 0

    iget-object p1, p0, LN6/p;->c:LN6/H;

    invoke-virtual {p1}, LN6/H;->b0()V

    return-void
.end method

.method public final synthetic X()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, LN6/p;->F:Z

    iget-object v0, p0, LN6/p;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, LN6/p;->G:I

    if-lez v1, :cond_2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, LN6/p;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public final synthetic Y(Ljava/util/List;Landroid/widget/LinearLayout;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/p;->k0(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final Z(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiIndex"
        }
    .end annotation

    iget-object v0, p0, LN6/p;->B:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    :cond_0
    return p1
.end method

.method public final a0(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualIndex"
        }
    .end annotation

    iget-object v0, p0, LN6/p;->B:[I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN6/p;->B:[I

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

.method public final b0(FF)V
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

    iget-object v0, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v0}, LN6/H;->getScale()F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x:F

    div-float/2addr p1, v0

    add-float/2addr v2, p1

    iput v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x:F

    iget p1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y:F

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y:F

    invoke-virtual {p0}, LN6/p;->f0()V

    return-void
.end method

.method public c0()V
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LN6/p;->f:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN6/p;->r(Z)V

    return-void
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

    invoke-virtual {p0}, LN6/p;->A()V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, LN6/p;->E:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LN6/p;->h:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, LN6/p;->i:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, LN6/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, LN6/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget-object v4, p0, LN6/p;->i:Landroid/widget/FrameLayout;

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

    iget-object v12, p0, LN6/p;->g:Landroid/graphics/Paint;

    move-object v5, p1

    move v10, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e0()V
    .locals 9

    iget-object v0, p0, LN6/p;->i:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/p;->w:[Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v0}, LN6/H;->getScale()F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget-object v0, p0, LN6/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, LN6/p;->w:[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_8

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, LN6/p;->M(ZI)Landroid/graphics/PointF;

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
    iget-object v7, p0, LN6/p;->z:[LN6/w;

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
    iget-object v0, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v0}, LN6/H;->c0()V

    return-void
.end method

.method public f0()V
    .locals 4

    iget-object v0, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v0}, LN6/H;->getScale()F

    move-result v0

    iget-object v1, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v1}, LN6/H;->getPanX()F

    move-result v1

    iget-object v2, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v2}, LN6/H;->getPanY()F

    move-result v2

    iget-object v3, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x:F

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y:F

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, LN6/p;->u0()V

    return-void
.end method

.method public g0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, LN6/p;->w:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LN6/p;->w:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v1}, LN6/p;->Z(I)I

    move-result v3

    if-eqz p1, :cond_3

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-eqz v5, :cond_2

    iget-object v6, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v5, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

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

    iget-object v2, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->n(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {p0, v2}, LN6/p;->F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LN6/p;->r0(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, LN6/h;

    invoke-direct {p1, p0}, LN6/h;-><init>(LN6/p;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBranchAnchorLocal()Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, LN6/p;->v:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, LN6/p;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    iget-object v0, p0, LN6/p;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getBranchSocket()LN6/w;
    .locals 1

    iget-object v0, p0, LN6/p;->s:LN6/w;

    return-object v0
.end method

.method public getCardLeftLocal()F
    .locals 1

    iget-object v0, p0, LN6/p;->i:Landroid/widget/FrameLayout;

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

    iget-object v0, p0, LN6/p;->i:Landroid/widget/FrameLayout;

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

.method public getInputSockets()[LN6/w;
    .locals 1

    iget-object v0, p0, LN6/p;->q:[LN6/w;

    return-object v0
.end method

.method public getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
    .locals 1

    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    return-object v0
.end method

.method public getOutputSockets()[LN6/w;
    .locals 1

    iget-object v0, p0, LN6/p;->r:[LN6/w;

    return-object v0
.end method

.method public final h0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "targetNode",
            "inputIndex"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eqz v0, :cond_3

    if-ltz p3, :cond_3

    array-length v2, v0

    if-ge p3, v2, :cond_3

    aget-object v0, v0, p3

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_1
    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    if-ne v3, p3, :cond_5

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_7

    return-object v1

    :cond_7
    iget-object p2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object p2

    if-nez p2, :cond_8

    return-object v1

    :cond_8
    iget p3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    new-instance v0, LN6/p$t;

    invoke-direct {v0, p0, p1}, LN6/p$t;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-virtual {p2, p3, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, p2, :cond_9

    goto :goto_3

    :cond_9
    return-object p1

    :cond_a
    :goto_3
    return-object v1
.end method

.method public final i0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;ZIILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 2
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

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :goto_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :cond_1
    if-eqz p2, :cond_9

    if-eqz p5, :cond_9

    iget-object p2, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    if-ltz p4, :cond_3

    move p3, p4

    :cond_3
    iget-object p2, p5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-eqz p4, :cond_4

    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    if-ne v0, p3, :cond_4

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_1
    if-nez p4, :cond_6

    return-object p1

    :cond_6
    iget-object p2, p4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p5, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object p2

    if-nez p2, :cond_7

    return-object p1

    :cond_7
    iget p3, p4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    new-instance p4, LN6/p$s;

    invoke-direct {p4, p0, p5}, LN6/p$s;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-virtual {p2, p3, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p2

    if-eqz p2, :cond_9

    sget-object p3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, p3, :cond_8

    goto :goto_2

    :cond_8
    return-object p2

    :cond_9
    :goto_2
    return-object p1
.end method

.method public final j0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetHeight"
        }
    .end annotation

    iput p1, p0, LN6/p;->G:I

    iget-boolean p1, p0, LN6/p;->F:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LN6/p;->F:Z

    new-instance p1, LN6/i;

    invoke-direct {p1, p0}, LN6/i;-><init>(LN6/p;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k0(Ljava/util/List;Landroid/widget/LinearLayout;)V
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

    new-instance v8, LN6/m;

    invoke-direct {v8, p0, p1, p2}, LN6/m;-><init>(LN6/p;Ljava/util/List;Landroid/widget/LinearLayout;)V

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

.method public final l0(Landroid/view/View;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 19
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

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    if-eqz v7, :cond_c

    if-nez v9, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, v6, LN6/p;->A:[Z

    if-eqz v0, :cond_1

    if-ltz v8, :cond_1

    array-length v1, v0

    if-ge v8, v1, :cond_1

    aget-boolean v0, v0, v8

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v6, v8}, LN6/p;->Z(I)I

    move-result v10

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    invoke-virtual {v11, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Landroid/widget/PopupWindow;

    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {v13, v11, v0, v1, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {v13, v12}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v13, v12}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, ""

    const/4 v14, 0x0

    if-ne v9, v0, :cond_3

    new-instance v0, LC5/b;

    new-instance v2, LN6/p$u;

    invoke-direct {v2, v6, v10, v8, v9}, LN6/p$u;-><init>(LN6/p;IILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    sget-object v3, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v0, v12}, LC5/b;->l(Z)LC5/b;

    move-result-object v2

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v5}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    :cond_2
    :goto_0
    move v2, v14

    goto/16 :goto_6

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v9, v0, :cond_6

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v9, v2, :cond_6

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v9, v2, :cond_6

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v9, v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v9, v0, :cond_5

    new-instance v0, LC5/b;

    new-instance v2, LN6/p$w;

    invoke-direct {v2, v6, v10, v8, v9}, LN6/p$w;-><init>(LN6/p;IILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    sget-object v3, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v0, v12}, LC5/b;->l(Z)LC5/b;

    move-result-object v2

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v5}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v9, v0, :cond_2

    new-instance v0, LC5/b;

    new-instance v2, LN6/p$x;

    invoke-direct {v2, v6, v10, v8, v9}, LN6/p$x;-><init>(LN6/p;IILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    sget-object v3, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    invoke-direct {v0, v2, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v0, v12}, LC5/b;->l(Z)LC5/b;

    move-result-object v2

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v5}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v9, v0, :cond_7

    move v15, v4

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v9, v0, :cond_8

    move v15, v3

    goto :goto_2

    :cond_8
    const/4 v15, 0x4

    :goto_2
    new-instance v5, LC5/b;

    sget-object v0, LC5/b$a;->Vector:LC5/b$a;

    new-array v2, v15, [LC5/b;

    invoke-direct {v5, v1, v0, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    const-string v0, "Y"

    const-string v1, "X"

    if-ne v15, v4, :cond_9

    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v14

    aput-object v0, v2, v12

    move-object/from16 v16, v2

    goto :goto_4

    :cond_9
    const-string v2, "Z"

    if-ne v15, v3, :cond_a

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v14

    aput-object v0, v3, v12

    aput-object v2, v3, v4

    :goto_3
    move-object/from16 v16, v3

    goto :goto_4

    :cond_a
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v14

    aput-object v0, v3, v12

    aput-object v2, v3, v4

    const-string v0, "W"

    const/4 v1, 0x3

    aput-object v0, v3, v1

    goto :goto_3

    :goto_4
    move v4, v14

    :goto_5
    if-ge v4, v15, :cond_b

    iget-object v3, v5, LC5/b;->p:[LC5/b;

    new-instance v2, LC5/b;

    new-instance v1, LN6/p$v;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v12, v2

    move/from16 v2, p2

    move-object/from16 v17, v3

    move-object/from16 v3, p3

    move/from16 v18, v4

    move-object v6, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, LN6/p$v;-><init>(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;II)V

    aget-object v0, v16, v18

    sget-object v1, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v12, v14, v0, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    aput-object v1, v17, v18

    add-int/lit8 v4, v18, 0x1

    move v12, v0

    move-object v5, v6

    const/4 v14, 0x0

    move-object/from16 v6, p0

    goto :goto_5

    :cond_b
    move-object v6, v5

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v11, v0, v6, v2, v1}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    :goto_6
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    invoke-virtual {v13, v7, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_c
    :goto_7
    return-void
.end method

.method public final m0()V
    .locals 2

    iget-object v0, p0, LN6/p;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, LN6/p;->n:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, LN6/p;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, LN6/p;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, LN6/p;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    iget-object v1, p0, LN6/p;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, LN6/p;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->E(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

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

    iget-object p1, p0, LN6/p;->l:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p2, p0, LN6/p;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, LN6/p;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p1, :cond_0

    invoke-virtual {p0, p1}, LN6/p;->j0(I)V

    :cond_0
    invoke-virtual {p0}, LN6/p;->e0()V

    invoke-virtual {p0}, LN6/p;->m0()V

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, LN6/p;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->exposeInInspector:Z

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

    iget-object v1, p0, LN6/p;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object v0, p0, LN6/p;->p:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final q0(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasRawEntries"
        }
    .end annotation

    iget-boolean v0, p0, LN6/p;->C:Z

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
    iget-boolean v0, p0, LN6/p;->D:Z

    iget-object v2, p0, LN6/p;->m:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LN6/p;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final r(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invalidate"
        }
    .end annotation

    iget-object v0, p0, LN6/p;->d:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, LN6/p;->d:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, LN6/p;->g:Landroid/graphics/Paint;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LN6/p;->e:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, LN6/p;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    invoke-virtual {p0}, LN6/p;->q()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final r0(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 12
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

    iget-object v0, p0, LN6/p;->x:[Landroid/widget/TextView;

    if-eqz v0, :cond_14

    if-ltz p1, :cond_14

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto/16 :goto_9

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_14

    if-nez p2, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {p0, p1}, LN6/p;->Z(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->k(I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2}, LN6/p;->L(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_9

    if-eqz v3, :cond_9

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v8, :cond_3

    invoke-static {v3}, LN6/p;->o0(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_3
    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p2, v8, :cond_4

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p2, v9, :cond_4

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p2, v9, :cond_4

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v9, :cond_9

    :cond_4
    if-ne p2, v8, :cond_5

    move v8, v5

    goto :goto_1

    :cond_5
    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v8, :cond_6

    move v8, v4

    goto :goto_1

    :cond_6
    const/4 v8, 0x4

    :goto_1
    invoke-static {v3, v8}, LN6/p;->p0(Ljava/lang/String;I)[F

    move-result-object v8

    if-nez v8, :cond_9

    invoke-static {v3}, LN6/p;->o0(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v3}, LN6/p;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-static {v3}, LN6/p;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_8
    move v3, v6

    goto :goto_3

    :cond_9
    :goto_2
    move-object v8, v2

    move v3, v7

    :goto_3
    iget-object v9, p0, LN6/p;->A:[Z

    if-eqz v9, :cond_a

    if-ltz p1, :cond_a

    array-length v10, v9

    if-ge p1, v10, :cond_a

    aput-boolean v3, v9, p1

    :cond_a
    const/16 v9, 0x8

    const-string v10, "-"

    if-nez v3, :cond_e

    if-eqz v8, :cond_b

    invoke-static {v8}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_b
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, LN6/p;->y:[Landroid/widget/ImageView;

    if-eqz p2, :cond_c

    if-ltz p1, :cond_c

    array-length v0, p2

    if-ge p1, v0, :cond_c

    aget-object p1, p2, p1

    goto :goto_4

    :cond_c
    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    return-void

    :cond_e
    sget-object v3, LN6/p$r;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v3, v3, v8

    const-string v8, ","

    const/4 v11, 0x6

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    if-eqz v1, :cond_f

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v1, :cond_f

    goto :goto_5

    :cond_f
    const-string v1, ""

    :goto_5
    iget-object v3, p0, LN6/p;->y:[Landroid/widget/ImageView;

    if-eqz v3, :cond_10

    if-ltz p1, :cond_10

    array-length v4, v3

    if-ge p1, v4, :cond_10

    aget-object p1, v3, p1

    goto :goto_6

    :cond_10
    move-object p1, v2

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_14

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_11
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ltz v2, :cond_12

    add-int/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_12
    move-object v2, v1

    :goto_7
    invoke-static {v2}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p2, v1}, LN6/p;->s0(Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1
    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {p0, p1, p2}, LN6/p;->E(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)[F

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, p1, v6

    invoke-static {v1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, v7

    invoke-static {v1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, v5

    invoke-static {v1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v4

    invoke-static {p1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :pswitch_2
    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {p0, p1, p2}, LN6/p;->E(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)[F

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, p1, v6

    invoke-static {v1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, v7

    invoke-static {v1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v5

    invoke-static {p1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :pswitch_3
    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {p0, p1, p2}, LN6/p;->E(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)[F

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, p1, v6

    invoke-static {v1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v7

    invoke-static {p1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :pswitch_4
    if-eqz v1, :cond_13

    iget p1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    goto :goto_8

    :cond_13
    invoke-virtual {p0, p1}, LN6/p;->D(I)F

    move-result p1

    :goto_8
    invoke-static {p1, v11}, LN6/p;->C(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final s()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v5, 0x8

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

    iget-object v14, v0, LN6/p;->d:Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v15}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v14, v0, LN6/p;->d:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v11, v11

    invoke-virtual {v14, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v14, v0, LN6/p;->d:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v15}, LNc/b;->k0(F)I

    move-result v10

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->d()I

    move-result v1

    invoke-virtual {v14, v10, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v10

    int-to-float v10, v10

    iput v10, v0, LN6/p;->h:F

    iget-object v10, v0, LN6/p;->g:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v10, v0, LN6/p;->g:Landroid/graphics/Paint;

    iget v14, v0, LN6/p;->h:F

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v10, v0, LN6/p;->g:Landroid/graphics/Paint;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->c()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

    move-result v10

    const/high16 v14, 0x41800000    # 16.0f

    if-eqz v10, :cond_0

    iput v13, v0, LN6/p;->j:I

    goto :goto_0

    :cond_0
    const/high16 v10, 0x42dc0000    # 110.0f

    invoke-static {v10}, LNc/b;->k0(F)I

    move-result v10

    const/high16 v16, 0x41f00000    # 30.0f

    invoke-static/range {v16 .. v16}, LNc/b;->k0(F)I

    move-result v16

    add-int v10, v10, v16

    invoke-static {v14}, LNc/b;->k0(F)I

    move-result v16

    add-int v10, v10, v16

    iput v10, v0, LN6/p;->j:I

    :goto_0
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v10, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, LN6/p;->i:Landroid/widget/FrameLayout;

    iget-object v14, v0, LN6/p;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v10, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v10

    iget-object v14, v0, LN6/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v14, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v10, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v14, v0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

    const/high16 v14, -0x40000000    # -2.0f

    invoke-static {v14}, LNc/b;->k0(F)I

    move-result v14

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v9, v0, LN6/p;->j:I

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v9, v0, LN6/p;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, LN6/p;->i:Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v14, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, LN6/p;->c:LN6/H;

    invoke-virtual {v2}, LN6/H;->getGraphData()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v2

    iget-object v9, v0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->n(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v2

    iget-object v9, v0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x()Z

    move-result v9

    const/high16 v14, 0x40c00000    # 6.0f

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v17, 0x41200000    # 10.0f

    if-eqz v9, :cond_3

    if-eqz v2, :cond_1

    array-length v2, v2

    if-nez v2, :cond_3

    :cond_1
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v2, v0, LN6/p;->e:Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v5, 0x4479c000    # 999.0f

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {v15}, LNc/b;->k0(F)I

    move-result v5

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->d()I

    move-result v9

    invoke-virtual {v2, v5, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v12, v0, LN6/p;->i:Landroid/widget/FrameLayout;

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

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {v17 .. v17}, LNc/b;->k0(F)I

    move-result v2

    new-instance v5, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, LN6/p;->v:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v9, v0, LN6/p;->v:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v0, LN6/p;->v:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v0, LN6/p;->v:Landroid/view/View;

    invoke-virtual {v1, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, LN6/p;->k:Landroid/widget/TextView;

    sget-object v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, LN6/p;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, LN6/p;->k:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v0, LN6/p;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, v0, LN6/p;->k:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v0, LN6/p;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    array-length v3, v3

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, v0, LN6/p;->u:[Landroid/view/View;

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

    iget-object v1, v0, LN6/p;->u:[Landroid/view/View;

    aput-object v3, v1, v13

    iput-boolean v8, v0, LN6/p;->D:Z

    :cond_2
    new-array v1, v13, [Landroid/view/View;

    iput-object v1, v0, LN6/p;->t:[Landroid/view/View;

    iput-boolean v13, v0, LN6/p;->C:Z

    invoke-virtual/range {p0 .. p0}, LN6/p;->u0()V

    new-instance v1, LN6/j;

    invoke-direct {v1, v0}, LN6/j;-><init>(LN6/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_3
    iget-object v2, v0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

    move-result v2

    const/4 v9, -0x1

    if-nez v2, :cond_4

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v5, v5, [F

    aput v11, v5, v13

    aput v11, v5, v8

    aput v11, v5, v7

    const/4 v12, 0x3

    aput v11, v5, v12

    const/4 v11, 0x0

    aput v11, v5, v6

    const/4 v12, 0x5

    aput v11, v5, v12

    const/4 v12, 0x6

    aput v11, v5, v12

    const/4 v12, 0x7

    aput v11, v5, v12

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, LN6/p;->v:Landroid/view/View;

    invoke-static/range {v17 .. v17}, LNc/b;->k0(F)I

    move-result v2

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800013

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, v0, LN6/p;->v:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, LN6/p;->v:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, LN6/p;->v:Landroid/view/View;

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, LN6/p;->k:Landroid/widget/TextView;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, LN6/p;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, LN6/p;->k:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, LN6/p;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, v0, LN6/p;->k:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v14}, LNc/b;->k0(F)I

    move-result v2

    iget-object v4, v0, LN6/p;->k:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, LNc/b;->k0(F)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, LN6/p;->k:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v5, v5, [F

    aput v11, v5, v13

    aput v11, v5, v8

    aput v11, v5, v7

    const/4 v7, 0x3

    aput v11, v5, v7

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x5

    aput v7, v5, v6

    const/4 v6, 0x6

    aput v7, v5, v6

    const/4 v6, 0x7

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x800015

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v5

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v6

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v7

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    invoke-virtual {v2, v5, v6, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LN6/p;->p:Landroid/widget/ImageView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, v0, LN6/p;->p:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, LN6/p;->q()V

    iget-object v1, v0, LN6/p;->p:Landroid/widget/ImageView;

    new-instance v2, LN6/k;

    invoke-direct {v2, v0}, LN6/k;-><init>(LN6/p;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {v0, v10}, LN6/p;->O(Landroid/widget/LinearLayout;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v15}, LNc/b;->k0(F)I

    move-result v2

    invoke-static {v15}, LNc/b;->k0(F)I

    move-result v4

    invoke-virtual {v1, v13, v2, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, LN6/p;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v5, v0, LN6/p;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, LN6/p;->m:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v6

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v7

    invoke-virtual {v4, v6, v13, v7, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v0, LN6/p;->m:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, LN6/p;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v6, v0, LN6/p;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, LN6/p;->n:Landroid/widget/LinearLayout;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v6

    invoke-virtual {v1, v4, v13, v6, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, LN6/p;->n:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LN6/p;->l:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v0, LN6/p;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LN6/p;->o:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, LN6/p;->l:Landroid/widget/FrameLayout;

    iget-object v2, v0, LN6/p;->o:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, LN6/p;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v0, LN6/p;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v0, LN6/p;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->materialGraphPreviewsEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v8, v13

    :goto_2
    invoke-virtual {v0, v8}, LN6/p;->setPreviewEnabled(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v13}, LN6/p;->setPreviewEnabled(Z)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, LN6/p;->u()V

    invoke-virtual/range {p0 .. p0}, LN6/p;->t()V

    invoke-virtual/range {p0 .. p0}, LN6/p;->u0()V

    new-instance v1, LN6/l;

    invoke-direct {v1, v0}, LN6/l;-><init>(LN6/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final s0(Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Ljava/lang/String;)V
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

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

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

.method public setBranchSocket(LN6/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    iput-object p1, p0, LN6/p;->s:LN6/w;

    return-void
.end method

.method public setInputSockets([LN6/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sockets"
        }
    .end annotation

    iput-object p1, p0, LN6/p;->q:[LN6/w;

    return-void
.end method

.method public setOutputSockets([LN6/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sockets"
        }
    .end annotation

    iput-object p1, p0, LN6/p;->r:[LN6/w;

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

    iget-object v0, p0, LN6/p;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
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

    iget-object v0, p0, LN6/p;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, LN6/p;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
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

    iput-boolean p1, p0, LN6/p;->E:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final t()V
    .locals 8

    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN6/p;->q0(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->exposeInInspector:Z

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_1

    new-instance v1, LC5/b;

    new-instance v4, LN6/p$y;

    invoke-direct {v4, p0}, LN6/p$y;-><init>(LN6/p;)V

    sget-object v5, LC5/b$a;->SLStringWrap:LC5/b$a;

    invoke-direct {v1, v4, v3, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;

    if-eqz v4, :cond_2

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;

    new-instance v4, LC5/b;

    new-instance v5, LN6/p$z;

    invoke-direct {v5, p0, v1}, LN6/p$z;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;)V

    sget-object v1, LC5/b$a;->SLFloatWrap:LC5/b$a;

    invoke-direct {v4, v5, v3, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    new-instance v4, LC5/b;

    new-instance v5, LN6/p$a;

    invoke-direct {v5, p0, v1}, LN6/p$a;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;)V

    sget-object v1, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v4, v5, v3, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;

    if-eqz v4, :cond_4

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v3, v1}, LN6/p;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v3, v1}, LN6/p;->y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    if-eqz v4, :cond_6

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v3, v1}, LN6/p;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat3Node;

    const-string v5, "C2"

    const-string v6, "C1"

    const-string v7, "C0"

    if-eqz v4, :cond_7

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat3Node;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat3Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v7, v3}, LN6/p;->y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat3Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v6, v3}, LN6/p;->y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat3Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v5, v1}, LN6/p;->y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;

    if-eqz v4, :cond_8

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v7, v3}, LN6/p;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v6, v3}, LN6/p;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v5, v3}, LN6/p;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "C3"

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p0, v3, v1}, LN6/p;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    if-eqz v4, :cond_9

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    new-instance v4, LC5/b;

    new-instance v5, LN6/p$b;

    invoke-direct {v5, p0, v1}, LN6/p$b;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;)V

    sget-object v1, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v4, v5, v3, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;

    if-eqz v4, :cond_a

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;

    new-instance v4, LC5/b;

    new-instance v5, LN6/p$c;

    invoke-direct {v5, p0, v1}, LN6/p$c;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;)V

    sget-object v1, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v4, v5, v3, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawCubemapNode;

    if-eqz v4, :cond_b

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawCubemapNode;

    new-instance v4, LC5/b;

    new-instance v5, LN6/p$d;

    invoke-direct {v5, p0, v1}, LN6/p$d;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawCubemapNode;)V

    sget-object v1, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    invoke-direct {v4, v5, v3, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v4, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

    if-eqz v4, :cond_d

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->K()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, LH3/g;->w1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_c
    const-string v3, "None"

    :goto_0
    new-instance v4, LC5/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    invoke-direct {v4, v3, v5}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LC5/b;

    new-instance v4, LN6/p$e;

    invoke-direct {v4, p0, v1}, LN6/p$e;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;)V

    sget-object v5, LC5/b$a;->Button:LC5/b$a;

    const-string v6, "Select Preset"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v3, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LC5/b;

    new-instance v4, LN6/p$f;

    invoke-direct {v4, p0, v1}, LN6/p$f;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;)V

    const-string v1, "Clear Preset"

    invoke-direct {v3, v4, v1, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v3, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    instance-of v4, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;

    if-eqz v4, :cond_e

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, LN6/p$g;

    invoke-direct {v5, p0}, LN6/p$g;-><init>(LN6/p;)V

    invoke-static {v3, v1, v4, v5}, LN9/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;LN9/a$b;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_1
    iget-object v1, p0, LN6/p;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, LN6/p;->k0(Ljava/util/List;Landroid/widget/LinearLayout;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, LN6/p;->q0(Z)V

    return-void
.end method

.method public t0()V
    .locals 2

    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

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

    iget-object v0, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, LN6/p;->setPreviewEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, LN6/p;->setPreviewEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 9

    iget-object v0, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v0}, LN6/H;->getGraphData()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    iget-object v1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->n(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v1

    iget-object v2, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

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
    iput-boolean v5, p0, LN6/p;->C:Z

    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iput-boolean v5, p0, LN6/p;->D:Z

    if-eqz v1, :cond_2

    array-length v5, v1

    new-array v5, v5, [Landroid/view/View;

    iput-object v5, p0, LN6/p;->t:[Landroid/view/View;

    array-length v5, v1

    new-array v5, v5, [Landroid/view/View;

    iput-object v5, p0, LN6/p;->w:[Landroid/view/View;

    array-length v5, v1

    new-array v5, v5, [Landroid/widget/TextView;

    iput-object v5, p0, LN6/p;->x:[Landroid/widget/TextView;

    array-length v5, v1

    new-array v5, v5, [LN6/w;

    iput-object v5, p0, LN6/p;->z:[LN6/w;

    array-length v5, v1

    new-array v5, v5, [Landroid/widget/ImageView;

    iput-object v5, p0, LN6/p;->y:[Landroid/widget/ImageView;

    array-length v5, v1

    new-array v5, v5, [Z

    iput-object v5, p0, LN6/p;->A:[Z

    array-length v5, v1

    new-array v5, v5, [I

    iput-object v5, p0, LN6/p;->B:[I

    move v5, v3

    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_3

    aget-object v6, v1, v5

    iget-object v7, p0, LN6/p;->B:[I

    iget-object v8, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v8, v0, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;I)I

    move-result v8

    aput v8, v7, v5

    iget-object v7, p0, LN6/p;->t:[Landroid/view/View;

    iget-object v8, p0, LN6/p;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v6, v4, v5}, LN6/p;->w(Landroid/widget/LinearLayout;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;ZI)Landroid/view/View;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, LN6/p;->B:[I

    :cond_3
    if-eqz v2, :cond_4

    array-length v1, v2

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, LN6/p;->u:[Landroid/view/View;

    move v1, v3

    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_4

    aget-object v4, v2, v1

    iget-object v5, p0, LN6/p;->u:[Landroid/view/View;

    iget-object v6, p0, LN6/p;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v4, v3, v1}, LN6/p;->w(Landroid/widget/LinearLayout;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;ZI)Landroid/view/View;

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, LN6/p;->g0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    return-void
.end method

.method public final u0()V
    .locals 3

    iget-object v0, p0, LN6/p;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v0}, LN6/H;->getGraphData()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    iget-object v1, p0, LN6/p;->k:Landroid/widget/TextView;

    iget-object v2, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final v(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;)Landroid/view/View;
    .locals 11
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
    iget-object v1, p0, LN6/p;->c:LN6/H;

    invoke-virtual {v1}, LN6/H;->getGraphData()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v7

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, LN6/p;->Z(I)I

    move-result v6

    move-object v2, p0

    move-object v3, p2

    move v5, p1

    invoke-virtual/range {v2 .. v7}, LN6/p;->i0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;ZIILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p2

    invoke-virtual {p0, p2}, LN6/p;->F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p2

    iget-object v1, p0, LN6/p;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    sget-object v1, LN6/p$r;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    return-object v0

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

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v8

    sget-object v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v7

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p2, v8, :cond_2

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v9, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v9, 0x42580000    # 54.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v9, 0x42dc0000    # 110.0f

    :goto_1
    invoke-static {v9}, LNc/b;->k0(F)I

    move-result v9

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v7

    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x2

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-eq p2, v8, :cond_4

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v8, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
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

    invoke-direct {v3, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

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

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v5

    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x800013

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v3

    :goto_3
    new-instance v3, LN6/w;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, LN6/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, LN6/w;->setType(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, LN6/p;->w:[Landroid/view/View;

    if-eqz v2, :cond_6

    if-ltz p1, :cond_6

    array-length v5, v2

    if-ge p1, v5, :cond_6

    aput-object v1, v2, p1

    iget-object v5, p0, LN6/p;->x:[Landroid/widget/TextView;

    aput-object v7, v5, p1

    iget-object v5, p0, LN6/p;->y:[Landroid/widget/ImageView;

    aput-object v0, v5, p1

    iget-object v0, p0, LN6/p;->z:[LN6/w;

    if-nez v0, :cond_5

    array-length v0, v2

    new-array v0, v0, [LN6/w;

    iput-object v0, p0, LN6/p;->z:[LN6/w;

    :cond_5
    iget-object v0, p0, LN6/p;->z:[LN6/w;

    aput-object v3, v0, p1

    :cond_6
    invoke-virtual {p0, p1, p2}, LN6/p;->r0(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v0, LN6/o;

    invoke-direct {v0, p0, p1, p2}, LN6/o;-><init>(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    return-object v1

    :cond_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final w(Landroid/widget/LinearLayout;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;ZI)Landroid/view/View;
    .locals 9
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

    const-string v6, ""

    if-eqz p2, :cond_4

    iget-object v7, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v6, v7

    :cond_1
    if-nez p3, :cond_3

    iget-object v7, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v7, v8, :cond_3

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v6, 0x2

    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v6

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-virtual {v3, v6, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p3, :cond_5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p4, p2}, LN6/p;->v(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;)Landroid/view/View;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v4
.end method

.method public final x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;
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

    new-instance v2, LN6/p$h;

    invoke-direct {v2, p0, p2}, LN6/p$h;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

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

    new-instance v4, LN6/p$i;

    invoke-direct {v4, p0, p2}, LN6/p$i;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const-string p2, "Y"

    invoke-direct {v1, v4, p2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object p2

    aput-object p2, p1, v2

    return-object v0
.end method

.method public final y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;
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

    new-instance v2, LN6/p$j;

    invoke-direct {v2, p0, p2}, LN6/p$j;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

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

    new-instance v4, LN6/p$l;

    invoke-direct {v4, p0, p2}, LN6/p$l;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v5, "Y"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LN6/p$m;

    invoke-direct {v4, p0, p2}, LN6/p$m;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string p2, "Z"

    invoke-direct {v1, v4, p2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, p1, v1

    return-object v0
.end method

.method public final z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)LC5/b;
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

    new-instance v2, LN6/p$n;

    invoke-direct {v2, p0, p2}, LN6/p$n;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

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

    new-instance v4, LN6/p$o;

    invoke-direct {v4, p0, p2}, LN6/p$o;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string v5, "Y"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LN6/p$p;

    invoke-direct {v4, p0, p2}, LN6/p$p;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string v5, "Z"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, p1, v4

    iget-object p1, v0, LC5/b;->p:[LC5/b;

    new-instance v1, LC5/b;

    new-instance v4, LN6/p$q;

    invoke-direct {v4, p0, p2}, LN6/p$q;-><init>(LN6/p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    const-string p2, "W"

    invoke-direct {v1, v4, p2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-virtual {v1, v2}, LC5/b;->l(Z)LC5/b;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, p1, v1

    return-object v0
.end method
