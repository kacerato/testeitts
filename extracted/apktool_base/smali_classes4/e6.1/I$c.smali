.class public final Le6/I$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le6/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lga/p;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/p;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "group",
            "extraSearchText",
            "nodeInterface",
            "node"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le6/I$c;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le6/I$c;->b:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object p2, v1

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    move-object p3, v1

    .line 7
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le6/I$c;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Le6/I$c;->d:Lga/p;

    .line 9
    iput-object p5, p0, Le6/I$c;->e:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/p;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Le6/I$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Le6/I$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lga/p;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    return-void
.end method

.method public static synthetic a(Le6/I$c;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 0

    iget-object p0, p0, Le6/I$c;->e:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    return-object p0
.end method

.method public static synthetic b(Le6/I$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le6/I$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Le6/I$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le6/I$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Le6/I$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le6/I$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Le6/I$c;)Lga/p;
    .locals 0

    iget-object p0, p0, Le6/I$c;->d:Lga/p;

    return-object p0
.end method
