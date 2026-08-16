.class public Lga/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/a;->b(Lga/a$d;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lga/a$d;


# direct methods
.method public constructor <init>(Lga/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lga/a$a;->a:Lga/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lga/H;Lga/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "listItemType"
        }
    .end annotation

    iget-object p2, p0, Lga/a$a;->a:Lga/a$d;

    if-eqz p2, :cond_0

    sget-object v0, Lga/H;->LIST:Lga/H;

    invoke-interface {p2, v0, p1}, Lga/a$d;->a(Lga/H;Lga/H;)V

    :cond_0
    return-void
.end method
