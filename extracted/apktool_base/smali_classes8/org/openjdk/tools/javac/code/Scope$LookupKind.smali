.class public final enum Lorg/openjdk/tools/javac/code/Scope$LookupKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LookupKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Scope$LookupKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Scope$LookupKind;

.field public static final enum NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

.field public static final enum RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    const-string v1, "RECURSIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Scope$LookupKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    new-instance v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    const-string v2, "NON_RECURSIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Scope$LookupKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->$VALUES:[Lorg/openjdk/tools/javac/code/Scope$LookupKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Scope$LookupKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Scope$LookupKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->$VALUES:[Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Scope$LookupKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    return-object v0
.end method
