.class public LZm/d$b;
.super LUm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LUm/a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LZm/d$b;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public synthetic constructor <init>(LZm/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, LZm/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public I(LUm/l;)V
    .locals 1

    iget-object p1, p0, LZm/d$b;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LZm/d$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(LUm/y;)V
    .locals 1

    iget-object p1, p0, LZm/d$b;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public v(LUm/A;)V
    .locals 1

    iget-object v0, p0, LZm/d$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LUm/A;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
