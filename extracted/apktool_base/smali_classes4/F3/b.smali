.class public LF3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I = -0x1

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5


# instance fields
.field public a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jmi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    iget-object v0, p0, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    sget-object v0, Ld8/j;->s:Ljava/util/List;

    iget-object v4, p0, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x4

    return v0

    :cond_5
    iget-object v0, p0, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    if-eqz v0, :cond_7

    return v1

    :cond_7
    return v3
.end method
