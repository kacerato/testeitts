.class public final synthetic Lcom/android/tools/r8/synthesis/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/synthesis/z;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/L1;->b:Lcom/android/tools/r8/synthesis/z;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/L1;->b:Lcom/android/tools/r8/synthesis/z;

    check-cast p1, Lcom/android/tools/r8/synthesis/w;

    check-cast p2, Lcom/android/tools/r8/synthesis/w;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/synthesis/w;Lcom/android/tools/r8/synthesis/w;)I

    move-result p1

    return p1
.end method
