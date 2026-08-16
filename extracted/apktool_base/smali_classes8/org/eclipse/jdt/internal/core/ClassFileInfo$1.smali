.class Lorg/eclipse/jdt/internal/core/ClassFileInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IMemberValuePair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/ClassFileInfo;->getTargetElementTypes(J)[Lorg/eclipse/jdt/core/IMemberValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/ClassFileInfo;

.field private final synthetic val$value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/ClassFileInfo;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo$1;->this$0:Lorg/eclipse/jdt/internal/core/ClassFileInfo;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueKind()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
