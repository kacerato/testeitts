.class public final Lokhttp3/y$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lokhttp3/u;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lokhttp3/D;


# direct methods
.method public constructor <init>(Lokhttp3/u;Lokhttp3/D;)V
    .locals 0
    .param p1    # Lokhttp3/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/y$b;->a:Lokhttp3/u;

    iput-object p2, p0, Lokhttp3/y$b;->b:Lokhttp3/D;

    return-void
.end method

.method public static b(Lokhttp3/u;Lokhttp3/D;)Lokhttp3/y$b;
    .locals 1
    .param p0    # Lokhttp3/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lokhttp3/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v0, Lokhttp3/y$b;

    invoke-direct {v0, p0, p1}, Lokhttp3/y$b;-><init>(Lokhttp3/u;Lokhttp3/D;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lokhttp3/D;)Lokhttp3/y$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lokhttp3/y$b;->b(Lokhttp3/u;Lokhttp3/D;)Lokhttp3/y$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lokhttp3/D;->e(Lokhttp3/x;Ljava/lang/String;)Lokhttp3/D;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lokhttp3/y$b;->e(Ljava/lang/String;Ljava/lang/String;Lokhttp3/D;)Lokhttp3/y$b;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Lokhttp3/D;)Lokhttp3/y$b;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lokhttp3/y;->i(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lokhttp3/y;->i(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/u;->k([Ljava/lang/String;)Lokhttp3/u;

    move-result-object p0

    invoke-static {p0, p2}, Lokhttp3/y$b;->b(Lokhttp3/u;Lokhttp3/D;)Lokhttp3/y$b;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lokhttp3/D;
    .locals 1

    iget-object v0, p0, Lokhttp3/y$b;->b:Lokhttp3/D;

    return-object v0
.end method

.method public f()Lokhttp3/u;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/y$b;->a:Lokhttp3/u;

    return-object v0
.end method
