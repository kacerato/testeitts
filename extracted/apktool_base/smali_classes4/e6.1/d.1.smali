.class public final synthetic Le6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Le6/l;


# direct methods
.method public synthetic constructor <init>(Le6/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/d;->b:Le6/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le6/d;->b:Le6/l;

    invoke-static {v0, p1}, Le6/l;->v1(Le6/l;Landroid/view/View;)V

    return-void
.end method
