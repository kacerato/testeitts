.class public Lw5/j$Q;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j;->g(Landroid/app/Activity;Landroid/content/Context;Ljd/b;Ljava/lang/String;Lw5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lw5/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lw5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$activity",
            "val$folderPath",
            "val$context",
            "val$callbacks"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$Q;->b:Landroid/app/Activity;

    iput-object p2, p0, Lw5/j$Q;->c:Ljava/lang/String;

    iput-object p3, p0, Lw5/j$Q;->d:Landroid/content/Context;

    iput-object p4, p0, Lw5/j$Q;->e:Lw5/b;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CREATE_IT_JAR:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$Q$a;

    invoke-direct {p3, p0}, Lw5/j$Q$a;-><init>(Lw5/j$Q;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ZIP_FOLDER:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$Q$b;

    invoke-direct {p3, p0}, Lw5/j$Q$b;-><init>(Lw5/j$Q;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ZIP_FILES:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$Q$c;

    invoke-direct {p3, p0}, Lw5/j$Q$c;-><init>(Lw5/j$Q;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
