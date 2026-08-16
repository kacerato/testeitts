.class public final synthetic Ly2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# instance fields
.field public final synthetic b:Ly2/h;


# direct methods
.method public synthetic constructor <init>(Ly2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/g;->b:Ly2/h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly2/g;->b:Ly2/h;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ly2/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
