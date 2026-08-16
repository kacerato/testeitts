.class public final Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/blacksquircle/ui/language/java/parser/JavaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lorg/blacksquircle/ui/language/java/parser/JavaParser;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lorg/blacksquircle/ui/language/java/parser/JavaParser;->access$getJavaParser$cp()Lorg/blacksquircle/ui/language/java/parser/JavaParser;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/blacksquircle/ui/language/java/parser/JavaParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/language/java/parser/JavaParser;-><init>(Lkotlin/jvm/internal/x;)V

    sget-object v1, Lorg/blacksquircle/ui/language/java/parser/JavaParser;->Companion:Lorg/blacksquircle/ui/language/java/parser/JavaParser$Companion;

    invoke-static {v0}, Lorg/blacksquircle/ui/language/java/parser/JavaParser;->access$setJavaParser$cp(Lorg/blacksquircle/ui/language/java/parser/JavaParser;)V

    :cond_0
    return-object v0
.end method
