.class public final synthetic LA2/n;
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

    iput-object p1, p0, LA2/n;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LA2/n;->b:Ljava/lang/Object;

    check-cast p1, LA2/o$f;

    invoke-static {v0, p1}, LA2/o;->j(Ljava/lang/Object;LA2/o$f;)LA2/u;

    move-result-object p1

    return-object p1
.end method
