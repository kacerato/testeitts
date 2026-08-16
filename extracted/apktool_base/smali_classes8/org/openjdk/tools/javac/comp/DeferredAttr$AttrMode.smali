.class public final enum Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttrMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

.field public static final enum CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

.field public static final enum SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    const-string v1, "SPECULATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    new-instance v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    const-string v2, "CHECK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->$VALUES:[Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->$VALUES:[Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    return-object v0
.end method
