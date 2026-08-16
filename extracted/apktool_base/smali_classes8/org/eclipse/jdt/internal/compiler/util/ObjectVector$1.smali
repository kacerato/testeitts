.class Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;->this$0:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;->i:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;->this$0:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;->this$0:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector$1;->i:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
