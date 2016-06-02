//
//  main.m
//  Demo_Algorithm(常用算法c语言) Algorithm_C
//
//  Created by ihefe_Hanrovey on 16/6/2.
//  Copyright © 2016年 IHEFE-Hanrovey. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>

#pragma mark - 选择排序
void selectionSortAlgorithm()
{
    int array[10] = {112,4,2,3,5,33,6,7,8,9};//定义一个数组
    int length = sizeof(array)/sizeof(array[0]);//得到数组的长度
    int k=0, s=0, i=0, j=0;//k保存临时结果，s，i，j为循环变量
    //选择排序开始
    for(i=0;i<length;i++)
    {
        for(j=i+1;j<length;j++)
        {
            if(array[i]>array[j])
            {
                k=array[i];
                array[i]=array[j];
                array[j]=k;
            }
        }
    }
    //选择排序结束，输出显示排序的结果
    for(s=0; s<length; s++)
    {
        printf("%d \n",array[s]);
    }
}

#pragma mark - 冒泡排序
void bubbleSortAlgorithm()
{
    int array[10] = {1,2,11,22,33,4,23,234,4,6};
    int length = sizeof(array)/sizeof(array[0]);
    int k=0, s=0, i=0, j=0, m=0;
    //冒泡排序开始
    for(i = length-1;i>0;i=k)
    {
        for(j=0, k=0;j<i;j++)
        {
            if(array[j]>array[j+1])//把比较出来大的数据向后移动
            {
                m=array[j];
                array[j]=array[j+1];
                array[j+1]=m;
                k=j;
            }
        }
    }
    //冒泡排序结束，输出显示排序的结果
    for(s=0; s<length; s++)
    {
        printf("%d \n",array[s]);
    }
}

#pragma mark - 快速排序
void fastSortAlgorithm(int array[], int low, int hight)
{
    int i,j,t,m;
    if(low<hight)
    {
        i = low;
        j = hight;
        t = array[low];
        while(i<j)
        {
            while(i<j && array[j]>t)//开始和后面的比较，如果后面的比他大继续，如果后面的比它小交换之
            {
                j--;
            }
            if(i<j)//在没有越界（i是从前面开始，j是从后面开始）的情况下进行交换
            {
                m=array[i];
                array[i]=array[j];
                array[j]=m;
                i++;//让前面的向后移动一个继续比较
            }
            while(i<j && array[i]<=t)//和前面的比较，如果前面的小于等于该关键数据继续，如果大于交换之
            {
                i++;
            }
            if(i<j)
            {
                m=array[j];
                array[j]=array[i];
                array[i]=m;
                j--;
            }
        }
        array[i]=t;//第一次比较结束，把i放到中间的位置，也即在i前面都比i小，在i后面都比i大
        fastSortAlgorithm(array, low, i-1);//前面部分实现递归
        fastSortAlgorithm(array, i+1, hight);//后面部分实现递归
    }
    
    
    for(int s = 0;s < hight + 1;s++)
    {
        printf("%d \n",array[s]);
    }
}

#pragma mark - 插入排序
void insertSortAlgorithm()
{
    int array[] = {9,43,567,1,45,23,123,54,234,987};
    int length = sizeof(array)/sizeof(array[0]);
    int i,j,t,m;
    //插入排序开始
    for(i=1;i<length;i++)//默认下标为0的已经是排序好的，所以从1开始
    {
        t = array[i];
        j=i;
        while((j>0)&&(array[j-1]>t))//如果前面的数比它大交换之
        {
            m=array[j-1];
            array[j-1]=array[j];
            array[j]=m;
            j--;//交换完毕继续比较
        }
    }
    //插入排序结束
    for(i=0;i<length;i++)
    {
        printf("%d \n",array[i]);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        selectionSortAlgorithm();
        
        bubbleSortAlgorithm();
        
        insertSortAlgorithm();
        
        
        int s = 0;
        int array[] = {10,22,3,21,45,67,2,11,110,453};
        int length = sizeof(array)/sizeof(array[0]);
        fastSortAlgorithm(array,s,length-1);
    }
    return 0;
}