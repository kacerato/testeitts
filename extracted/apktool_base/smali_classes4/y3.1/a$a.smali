.class public Ly3/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly3/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ly3/a;->C()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Ly3/a$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly3/a$b;

    if-nez p1, :cond_0

    const-string p1, "ERROR: invalid request"

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object v0, p1, Ly3/a$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p1, Ly3/a$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Ly3/a$b;->a:Ljava/lang/String;

    invoke-static {v0}, LD3/a;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object p1, p1, Ly3/a$b;->b:Ljava/lang/String;

    invoke-static {p1}, LD3/a;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "ERROR: source does not exist"

    return-object p1

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "ERROR: source and destination are the same"

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "ERROR: destination already exists"

    return-object p1

    :cond_5
    invoke-static {v0, p1}, Lid/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "OK"

    goto :goto_0

    :cond_6
    const-string p1, "ERROR: copy failed"

    :goto_0
    return-object p1

    :cond_7
    :goto_1
    const-string p1, "ERROR: dst cannot be empty"

    return-object p1

    :cond_8
    :goto_2
    const-string p1, "ERROR: src cannot be empty"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
