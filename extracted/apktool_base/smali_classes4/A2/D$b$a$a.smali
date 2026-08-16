.class public LA2/D$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/D$b$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "LA2/u<",
        "TN;>;",
        "LA2/u<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LA2/D$b$a;


# direct methods
.method public constructor <init>(LA2/D$b$a;)V
    .locals 0

    iput-object p1, p0, LA2/D$b$a$a;->b:LA2/D$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LA2/u;)LA2/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/D$b$a$a;->b:LA2/D$b$a;

    iget-object v0, v0, LA2/D$b$a;->d:LA2/D$b;

    invoke-virtual {v0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, LA2/u;->j(LA2/z;Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LA2/u;

    invoke-virtual {p0, p1}, LA2/D$b$a$a;->a(LA2/u;)LA2/u;

    move-result-object p1

    return-object p1
.end method
