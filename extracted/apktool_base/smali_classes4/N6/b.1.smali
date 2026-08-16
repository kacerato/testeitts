.class public final synthetic LN6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LN6/f;


# direct methods
.method public synthetic constructor <init>(LN6/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/b;->b:LN6/f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LN6/b;->b:LN6/f;

    invoke-static {v0, p1}, LN6/f;->q1(LN6/f;Landroid/view/View;)V

    return-void
.end method
