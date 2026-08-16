.class public final Lu0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lu0/g;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lu0/h;)V
    .locals 1
    .annotation build LG0/F;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lu0/g;->a:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p1}, Lu0/h;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lu0/g;->a:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p1}, Lu0/h;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu0/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lu0/g;
    .locals 0
    .annotation build LG0/F;
    .end annotation

    iput-object p1, p0, Lu0/g;->b:Ljava/lang/String;

    return-object p0
.end method
