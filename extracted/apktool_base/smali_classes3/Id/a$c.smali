.class public final LId/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LId/a;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LId/a;


# direct methods
.method public constructor <init>(LId/a;)V
    .locals 0

    iput-object p1, p0, LId/a$c;->b:LId/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LId/a$c;->b:LId/a;

    invoke-static {p1}, LId/a;->F(LId/a;)LLd/a;

    move-result-object p1

    invoke-virtual {p1}, LLd/a;->o()V

    return-void
.end method
