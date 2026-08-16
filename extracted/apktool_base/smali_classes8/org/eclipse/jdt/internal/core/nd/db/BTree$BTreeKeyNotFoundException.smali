.class Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/db/BTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BTreeKeyNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7dcee812849973d6L


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/BTree;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$BTreeKeyNotFoundException;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
