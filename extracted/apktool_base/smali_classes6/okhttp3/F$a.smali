.class public Lokhttp3/F$a;
.super Lokhttp3/F;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/F;->j(Lokhttp3/x;JLTg/e;)Lokhttp3/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lokhttp3/x;

.field public final synthetic d:J

.field public final synthetic e:LTg/e;


# direct methods
.method public constructor <init>(Lokhttp3/x;JLTg/e;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/F$a;->c:Lokhttp3/x;

    iput-wide p2, p0, Lokhttp3/F$a;->d:J

    iput-object p4, p0, Lokhttp3/F$a;->e:LTg/e;

    invoke-direct {p0}, Lokhttp3/F;-><init>()V

    return-void
.end method


# virtual methods
.method public g()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/F$a;->d:J

    return-wide v0
.end method

.method public h()Lokhttp3/x;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/F$a;->c:Lokhttp3/x;

    return-object v0
.end method

.method public n()LTg/e;
    .locals 1

    iget-object v0, p0, Lokhttp3/F$a;->e:LTg/e;

    return-object v0
.end method
