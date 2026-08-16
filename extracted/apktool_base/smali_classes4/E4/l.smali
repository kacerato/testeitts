.class public final synthetic LE4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LE4/k$c;

.field public final synthetic c:Le8/c;


# direct methods
.method public synthetic constructor <init>(LE4/k$c;Le8/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/l;->b:LE4/k$c;

    iput-object p2, p0, LE4/l;->c:Le8/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LE4/l;->b:LE4/k$c;

    iget-object v1, p0, LE4/l;->c:Le8/c;

    invoke-static {v0, v1, p1}, LE4/k$c;->c(LE4/k$c;Le8/c;Landroid/view/View;)V

    return-void
.end method
