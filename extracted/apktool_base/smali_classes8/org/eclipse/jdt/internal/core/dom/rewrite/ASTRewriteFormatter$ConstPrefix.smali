.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstPrefix"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPrefix(I)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;->prefix:Ljava/lang/String;

    return-object p1
.end method
