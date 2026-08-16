.class public final LD0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LD0/c;

.field public final b:Lv1/l;


# direct methods
.method public constructor <init>(LD0/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/l;

    invoke-direct {v0}, Lv1/l;-><init>()V

    iput-object v0, p0, LD0/y;->b:Lv1/l;

    iput-object p1, p0, LD0/y;->a:LD0/c;

    return-void
.end method


# virtual methods
.method public final a()LD0/c;
    .locals 1

    iget-object v0, p0, LD0/y;->a:LD0/c;

    return-object v0
.end method

.method public final b()Lv1/l;
    .locals 1

    iget-object v0, p0, LD0/y;->b:Lv1/l;

    return-object v0
.end method
