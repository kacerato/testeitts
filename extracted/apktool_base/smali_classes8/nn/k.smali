.class public final synthetic Lnn/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lnn/l;


# direct methods
.method public synthetic constructor <init>(Lnn/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnn/k;->b:Lnn/l;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnn/k;->b:Lnn/l;

    check-cast p1, Lwn/p$b;

    invoke-static {v0, p1}, Lnn/l;->a(Lnn/l;Lwn/p$b;)[Lnn/c;

    move-result-object p1

    return-object p1
.end method
