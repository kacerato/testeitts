.class public final LGd/f;
.super LEd/a;
.source "SourceFile"


# instance fields
.field public b:LDd/a$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:F

.field public d:F

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LEd/a;-><init>()V

    sget-object v0, LDd/a$d;->UNKNOWN:LDd/a$d;

    iput-object v0, p0, LGd/f;->b:LDd/a$d;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, LGd/f;->c:F

    return v0
.end method

.method public final b()LDd/a$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LGd/f;->b:LDd/a$d;

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, LGd/f;->d:F

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LGd/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(LDd/b;Ljava/lang/String;)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LGd/f;->e:Ljava/lang/String;

    return-void
.end method

.method public l(LDd/b;F)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, LGd/f;->c:F

    return-void
.end method

.method public v(LDd/b;LDd/a$d;)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LDd/a$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LGd/f;->b:LDd/a$d;

    return-void
.end method

.method public w(LDd/b;F)V
    .locals 1
    .param p1    # LDd/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, LGd/f;->d:F

    return-void
.end method
