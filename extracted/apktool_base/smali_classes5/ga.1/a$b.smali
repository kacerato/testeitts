.class public Lga/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/a;->g(Lga/H;Lga/a$d;)Ldd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lga/a$d;

.field public final synthetic b:Lga/H;


# direct methods
.method public constructor <init>(Lga/a$d;Lga/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lga/a$b;->a:Lga/a$d;

    iput-object p2, p0, Lga/a$b;->b:Lga/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lga/a$b;->a:Lga/a$d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lga/a$b;->b:Lga/H;

    sget-object v1, Lga/H;->NUMBER:Lga/H;

    invoke-interface {p1, v0, v1}, Lga/a$d;->a(Lga/H;Lga/H;)V

    :cond_0
    return-void
.end method
