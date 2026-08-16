.class public LL8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LAc/b;

.field public b:LAc/b;

.field public c:LAc/b;

.field public d:Ljava/lang/String;

.field public e:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

.field public f:F

.field public g:I

.field public h:F

.field public i:I

.field public j:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public n:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:F

.field public r:Z

.field public s:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LL8/c;->f:F

    return-void
.end method

.method public static T(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LL8/c;->n:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object p0
.end method

.method public static U(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LL8/c;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object p0
.end method

.method public static V(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LL8/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static a(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LL8/c;->j:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static b(LL8/c;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, LL8/c;->h:F

    return p0
.end method

.method public static t(LL8/c;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LL8/c;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static u(LL8/c;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, LL8/c;->i:I

    return p0
.end method

.method public static w(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LL8/c;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object p0
.end method

.method public static z(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "mjp"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, LL8/c;->a:LAc/b;

    iput-object v0, p0, LL8/c;->b:LAc/b;

    iput-object v0, p0, LL8/c;->c:LAc/b;

    iput-object v0, p0, LL8/c;->d:Ljava/lang/String;

    iput-object v0, p0, LL8/c;->e:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, LL8/c;->f:F

    const/4 v1, 0x0

    iput v1, p0, LL8/c;->g:I

    iput-object v0, p0, LL8/c;->p:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, LL8/c;->q:F

    iput-boolean v1, p0, LL8/c;->r:Z

    iput v2, p0, LL8/c;->h:F

    iput v1, p0, LL8/c;->i:I

    iput-object v0, p0, LL8/c;->j:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-object v0, p0, LL8/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object v0, p0, LL8/c;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object v0, p0, LL8/c;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput-object v0, p0, LL8/c;->n:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    iput-object v0, p0, LL8/c;->o:Ljava/lang/String;

    iput-object v0, p0, LL8/c;->s:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public B(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    iput p1, p0, LL8/c;->q:F

    return-void
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorValue"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->j:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public D(LAc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentUID"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->c:LAc/b;

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->d:Ljava/lang/String;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->p:Ljava/lang/String;

    return-void
.end method

.method public G(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventFromInterpolation"
        }
    .end annotation

    iput-boolean p1, p0, LL8/c;->r:Z

    return-void
.end method

.method public H(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatValue"
        }
    .end annotation

    iput p1, p0, LL8/c;->h:F

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageValue"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->o:Ljava/lang/String;

    return-void
.end method

.method public J(LAc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instantFrameID"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->a:LAc/b;

    return-void
.end method

.method public K(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intValue"
        }
    .end annotation

    iput p1, p0, LL8/c;->i:I

    return-void
.end method

.method public L(LAc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->b:LAc/b;

    return-void
.end method

.method public M(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originFrameTime"
        }
    .end annotation

    iput p1, p0, LL8/c;->g:I

    return-void
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quatValue"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public O(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "square5Value"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->n:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-void
.end method

.method public P(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->e:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-void
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec2Value"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public R(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec3Value"
        }
    .end annotation

    iput-object p1, p0, LL8/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public S(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight"
        }
    .end annotation

    iput p1, p0, LL8/c;->f:F

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, LL8/c;->q:F

    return v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, LL8/c;->j:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public e()LAc/b;
    .locals 1

    iget-object v0, p0, LL8/c;->c:LAc/b;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LL8/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LL8/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, LL8/c;->h:F

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LL8/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public j()LAc/b;
    .locals 1

    iget-object v0, p0, LL8/c;->a:LAc/b;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, LL8/c;->i:I

    return v0
.end method

.method public l()LAc/b;
    .locals 1

    iget-object v0, p0, LL8/c;->b:LAc/b;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, LL8/c;->g:I

    return v0
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    iget-object v0, p0, LL8/c;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object v0
.end method

.method public o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 1

    iget-object v0, p0, LL8/c;->n:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object v0
.end method

.method public p()Lcom/itsmagic/engine/Engines/Engine/Animation/c;
    .locals 1

    iget-object v0, p0, LL8/c;->e:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-object v0
.end method

.method public q()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, LL8/c;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, LL8/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public s()F
    .locals 1

    iget v0, p0, LL8/c;->f:F

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, LL8/c;->r:Z

    return v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LL8/c;->y(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    return-void
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mjp"
        }
    .end annotation

    iget-object v0, p0, LL8/c;->j:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, LL8/c;->z(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    :cond_0
    iget-object v0, p0, LL8/c;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, LL8/c;->z(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    :cond_1
    iget-object v0, p0, LL8/c;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, LL8/c;->z(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    :cond_2
    iget-object v0, p0, LL8/c;->m:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, LL8/c;->z(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    :cond_3
    invoke-virtual {p0}, LL8/c;->A()V

    invoke-static {p0, p1}, LL8/c;->z(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    return-void
.end method
