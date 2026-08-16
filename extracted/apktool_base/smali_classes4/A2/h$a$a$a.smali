.class public LA2/h$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/h$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "TE;",
        "LA2/u<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LA2/h$a$a;


# direct methods
.method public constructor <init>(LA2/h$a$a;)V
    .locals 0

    iput-object p1, p0, LA2/h$a$a$a;->b:LA2/h$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LA2/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/h$a$a$a;->b:LA2/h$a$a;

    iget-object v0, v0, LA2/h$a$a;->b:LA2/h$a;

    iget-object v0, v0, LA2/h$a;->a:LA2/h;

    invoke-interface {v0, p1}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LA2/h$a$a$a;->a(Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method
