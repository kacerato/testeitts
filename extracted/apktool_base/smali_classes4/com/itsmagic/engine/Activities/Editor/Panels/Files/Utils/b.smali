.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lw5/j$m0;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lw5/j$m0;->Component:Lw5/j$m0;

    filled-new-array {v0}, [Lw5/j$m0;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->a:[Lw5/j$m0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "MyScript"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LG4/e;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->g(LG4/e;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c()[Lw5/j$m0;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->a:[Lw5/j$m0;

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic f()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static g(LG4/e;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LG4/e;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$b;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$b;-><init>()V

    const-string v3, "Name"

    sget-object v4, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TYPE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->a:[Lw5/j$m0;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;-><init>(LG4/e;)V

    const-class p0, Lw5/j$m0;

    invoke-static {v1, p0, v4, v5}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$d;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$d;-><init>()V

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v5, "Hide package declaration"

    invoke-direct {p0, v1, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$e;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$e;-><init>()V

    const-string v5, "Hide imports declaration"

    invoke-direct {p0, v1, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, v2, v3

    sget-object v1, Lw5/j$m0;->Component:Lw5/j$m0;

    if-ne p0, v1, :cond_0

    new-instance p0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$f;-><init>()V

    const-string v2, "Hide class declaration"

    invoke-direct {p0, v1, v2, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static h(Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "folderPath",
            "runnable"
        }
    .end annotation

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$a;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string p1, "New java script"

    const/16 p2, 0xfa

    const/16 v0, 0xe6

    invoke-static {p1, p2, v0, p0}, LG4/e;->x1(Ljava/lang/String;IILG4/f;)LG4/e;

    return-void
.end method
