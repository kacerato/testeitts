.class Lorg/google/googlejavaformat/java/ImportOrderer$Import;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/ImportOrderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Import"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/google/googlejavaformat/java/ImportOrderer$Import;",
        ">;"
    }
.end annotation


# instance fields
.field final imported:Ljava/lang/String;

.field final isStatic:Z

.field final synthetic this$0:Lorg/google/googlejavaformat/java/ImportOrderer;

.field final trailing:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/google/googlejavaformat/java/ImportOrderer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "imported",
            "trailing",
            "isStatic"
        }
    .end annotation

    iput-object p1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->this$0:Lorg/google/googlejavaformat/java/ImportOrderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->imported:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->trailing:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "that"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/google/googlejavaformat/java/ImportOrderer$Import;

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->compareTo(Lorg/google/googlejavaformat/java/ImportOrderer$Import;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/google/googlejavaformat/java/ImportOrderer$Import;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "that"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    iget-boolean v1, p1, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->imported:Ljava/lang/String;

    iget-object p1, p1, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->imported:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "import "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    if-eqz v1, :cond_0

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->imported:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->trailing:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->trailing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->this$0:Lorg/google/googlejavaformat/java/ImportOrderer;

    invoke-static {v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->access$000(Lorg/google/googlejavaformat/java/ImportOrderer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
