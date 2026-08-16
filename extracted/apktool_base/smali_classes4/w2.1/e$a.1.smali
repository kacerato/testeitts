.class public Lw2/e$a;
.super Lw2/e$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/e;->K()Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lw2/e;Lw2/e;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lw2/e$a;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lw2/e$x;-><init>(Lw2/e;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw2/e$a;->d:Ljava/lang/String;

    return-object v0
.end method
