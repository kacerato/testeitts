.class public final enum Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/JavaCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompilePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum ATTR_ONLY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum BY_FILE:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum BY_TODO:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum CHECK_ONLY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final enum SIMPLE:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v1, "ATTR_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->ATTR_ONLY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    new-instance v1, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v2, "CHECK_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->CHECK_ONLY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    new-instance v2, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v3, "SIMPLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->SIMPLE:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    new-instance v3, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v4, "BY_FILE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->BY_FILE:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    new-instance v4, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    const-string v5, "BY_TODO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->BY_TODO:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->$VALUES:[Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/main/JavaCompiler;->access$000()Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "attr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->ATTR_ONLY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object p0

    :cond_1
    const-string v0, "check"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->CHECK_ONLY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object p0

    :cond_2
    const-string v0, "simple"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->SIMPLE:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object p0

    :cond_3
    const-string v0, "byfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->BY_FILE:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object p0

    :cond_4
    const-string v0, "bytodo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->BY_TODO:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object p0

    :cond_5
    invoke-static {}, Lorg/openjdk/tools/javac/main/JavaCompiler;->access$000()Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->$VALUES:[Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object v0
.end method
