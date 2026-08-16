.class Lorg/eclipse/jdt/internal/compiler/lookup/Scope$MethodClashException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodClashException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6efa449c942fabbcL


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$MethodClashException;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
