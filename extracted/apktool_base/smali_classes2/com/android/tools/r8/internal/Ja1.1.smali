.class public final synthetic Lcom/android/tools/r8/internal/Ja1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/aI;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/VS;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/VS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ja1;->a:Lcom/android/tools/r8/internal/VS;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ja1;->a:Lcom/android/tools/r8/internal/VS;

    check-cast p2, Lcom/android/tools/r8/internal/N8;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/VS;ILcom/android/tools/r8/internal/N8;)Z

    move-result p1

    return p1
.end method
