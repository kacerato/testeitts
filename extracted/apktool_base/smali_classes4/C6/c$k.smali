.class public LC6/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c;->onClose(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

.field public final synthetic f:LC6/c;


# direct methods
.method public constructor <init>(LC6/c;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$filePath",
            "val$txt",
            "val$context",
            "val$jmt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC6/c$k;->f:LC6/c;

    iput-object p2, p0, LC6/c$k;->b:Ljava/lang/String;

    iput-object p3, p0, LC6/c$k;->c:Ljava/lang/String;

    iput-object p4, p0, LC6/c$k;->d:Landroid/content/Context;

    iput-object p5, p0, LC6/c$k;->e:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LC6/c$k;->b:Ljava/lang/String;

    iget-object v1, p0, LC6/c$k;->c:Ljava/lang/String;

    iget-object v2, p0, LC6/c$k;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, LC6/c$k;->e:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld8/j;->r0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    :cond_0
    invoke-static {}, LLb/k;->v()V

    return-void
.end method
