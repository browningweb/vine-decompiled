.class Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;


# direct methods
.method constructor <init>(Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;->this$1:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;->this$1:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;

    invoke-virtual {v0}, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->notifyDataSetChanged()V

    .line 1128
    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;->this$1:Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;

    iget-object v0, v0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #calls: Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
    invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$1200(Lco/vine/android/dragsort/DragSortWidget;)V

    .line 1129
    return-void
.end method
