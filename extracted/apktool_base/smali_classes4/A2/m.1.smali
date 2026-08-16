.class public final synthetic LA2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA2/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LA2/m;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, LA2/o;->k(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method
