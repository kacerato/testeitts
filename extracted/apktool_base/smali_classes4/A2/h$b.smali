.class public LA2/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/h;->N(Ljava/lang/Object;Ljava/lang/Object;)Lw2/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/I<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:LA2/h;


# direct methods
.method public constructor <init>(LA2/h;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LA2/h$b;->d:LA2/h;

    iput-object p2, p0, LA2/h$b;->b:Ljava/lang/Object;

    iput-object p3, p0, LA2/h$b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, LA2/h$b;->d:LA2/h;

    invoke-interface {v0, p1}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object p1

    iget-object v0, p0, LA2/h$b;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, LA2/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LA2/h$b;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
