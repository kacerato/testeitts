.class public final synthetic Le6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/a$d;


# instance fields
.field public final synthetic a:Le6/l;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Le6/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/f;->a:Le6/l;

    iput-object p2, p0, Le6/f;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lga/H;Lga/H;)V
    .locals 2

    iget-object v0, p0, Le6/f;->a:Le6/l;

    iget-object v1, p0, Le6/f;->b:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Le6/l;->z1(Le6/l;Landroid/view/View;Lga/H;Lga/H;)V

    return-void
.end method
