.class public final synthetic LA2/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# instance fields
.field public final synthetic b:LA2/T;


# direct methods
.method public synthetic constructor <init>(LA2/T;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA2/H;->b:LA2/T;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LA2/H;->b:LA2/T;

    invoke-static {v0, p1}, LA2/I;->V(LA2/T;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
