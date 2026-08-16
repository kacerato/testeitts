.class public final LLd/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LLd/a;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LLd/a;


# direct methods
.method public constructor <init>(LLd/a;)V
    .locals 0

    iput-object p1, p0, LLd/a$c;->b:LLd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LLd/a$c;->b:LLd/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LLd/a;->a(LLd/a;F)V

    return-void
.end method
