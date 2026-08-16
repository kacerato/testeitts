.class public final enum Lcom/github/javaparser/ast/type/ArrayType$Origin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/type/ArrayType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/ast/type/ArrayType$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/ast/type/ArrayType$Origin;

.field public static final enum NAME:Lcom/github/javaparser/ast/type/ArrayType$Origin;

.field public static final enum TYPE:Lcom/github/javaparser/ast/type/ArrayType$Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/github/javaparser/ast/type/ArrayType$Origin;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/type/ArrayType$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/javaparser/ast/type/ArrayType$Origin;->NAME:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    new-instance v1, Lcom/github/javaparser/ast/type/ArrayType$Origin;

    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/javaparser/ast/type/ArrayType$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javaparser/ast/type/ArrayType$Origin;->TYPE:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    filled-new-array {v0, v1}, [Lcom/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ast/type/ArrayType$Origin;->$VALUES:[Lcom/github/javaparser/ast/type/ArrayType$Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/ast/type/ArrayType$Origin;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/type/ArrayType$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/type/ArrayType$Origin;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/ast/type/ArrayType$Origin;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/type/ArrayType$Origin;->$VALUES:[Lcom/github/javaparser/ast/type/ArrayType$Origin;

    invoke-virtual {v0}, [Lcom/github/javaparser/ast/type/ArrayType$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/ast/type/ArrayType$Origin;

    return-object v0
.end method
