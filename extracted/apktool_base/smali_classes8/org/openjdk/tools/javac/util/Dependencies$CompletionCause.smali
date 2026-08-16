.class public final enum Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompletionCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;",
        ">;",
        "Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

.field public static final enum CLASS_READER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

.field public static final enum HEADER_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

.field public static final enum HIERARCHY_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

.field public static final enum IMPORTS_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

.field public static final enum MEMBERS_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

.field public static final enum MEMBER_ENTER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

.field public static final enum OTHER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    const-string v1, "CLASS_READER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->CLASS_READER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v1, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    const-string v2, "HEADER_PHASE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->HEADER_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v2, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    const-string v3, "HIERARCHY_PHASE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->HIERARCHY_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v3, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    const-string v4, "IMPORTS_PHASE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->IMPORTS_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v4, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    const-string v5, "MEMBER_ENTER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->MEMBER_ENTER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v5, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    const-string v6, "MEMBERS_PHASE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->MEMBERS_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v6, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    const-string v7, "OTHER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->OTHER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    filled-new-array/range {v0 .. v6}, [Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->$VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->$VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    return-object v0
.end method
