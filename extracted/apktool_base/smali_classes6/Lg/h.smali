.class public final LLg/h;
.super Lokhttp3/F;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:J

.field public final e:LTg/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLTg/e;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lokhttp3/F;-><init>()V

    iput-object p1, p0, LLg/h;->c:Ljava/lang/String;

    iput-wide p2, p0, LLg/h;->d:J

    iput-object p4, p0, LLg/h;->e:LTg/e;

    return-void
.end method


# virtual methods
.method public g()J
    .locals 2

    iget-wide v0, p0, LLg/h;->d:J

    return-wide v0
.end method

.method public h()Lokhttp3/x;
    .locals 1

    iget-object v0, p0, LLg/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/x;->d(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n()LTg/e;
    .locals 1

    iget-object v0, p0, LLg/h;->e:LTg/e;

    return-object v0
.end method
