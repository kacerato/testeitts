.class public LM5/f;
.super LL5/b;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LL5/b;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LM5/f;->i:Ljava/util/List;

    return-void
.end method

.method public static synthetic q(LM5/f;)V
    .locals 0

    invoke-virtual {p0}, LM5/f;->s()V

    return-void
.end method

.method public static synthetic r(LM5/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LM5/f;->i:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public k()V
    .locals 1

    invoke-super {p0}, LL5/b;->k()V

    const-string v0, "Importing audio"

    invoke-virtual {p0, v0}, LL5/b;->o(Ljava/lang/String;)V

    const-string v0, "Checking audio files"

    invoke-virtual {p0, v0}, LL5/b;->n(Ljava/lang/String;)V

    new-instance v0, LM5/f$a;

    invoke-direct {v0, p0}, LM5/f$a;-><init>(LM5/f;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s()V
    .locals 7

    iget-object v0, p0, LM5/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, LL5/b;->c()LI5/a;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, LI5/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->i(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, LM5/f;->i:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
