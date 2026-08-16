.class public final synthetic Le6/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Le6/E;


# direct methods
.method public synthetic constructor <init>(Le6/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/w;->b:Le6/E;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le6/w;->b:Le6/E;

    invoke-static {v0, p1}, Le6/E;->o(Le6/E;Landroid/view/View;)V

    return-void
.end method
