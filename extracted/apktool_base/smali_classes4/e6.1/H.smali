.class public final synthetic Le6/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Le6/I;


# direct methods
.method public synthetic constructor <init>(Le6/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/H;->b:Le6/I;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le6/H;->b:Le6/I;

    invoke-static {v0, p1}, Le6/I;->p1(Le6/I;Landroid/view/View;)V

    return-void
.end method
