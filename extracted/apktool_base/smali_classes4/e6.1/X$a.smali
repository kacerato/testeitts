.class public Le6/X$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le6/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le6/X;


# direct methods
.method public constructor <init>(Le6/X;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Le6/X$a;->b:Le6/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le6/X$a;->b:Le6/X;

    invoke-static {v0}, Le6/X;->l(Le6/X;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le6/X$a;->b:Le6/X;

    invoke-static {v0}, Le6/X;->l(Le6/X;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->b:Z

    :cond_0
    iget-object v0, p0, Le6/X$a;->b:Le6/X;

    invoke-static {v0}, Le6/X;->m(Le6/X;)V

    return-void
.end method
