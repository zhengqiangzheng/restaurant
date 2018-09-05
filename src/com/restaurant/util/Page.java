package com.restaurant.util;

import java.util.List;

/**
 * 分页工具类
 * @author Lisa Li
 * @param <T>
 *
 */
public class Page<T> {

	private Integer pageNum; // 当前页
	private Integer pageSize; // 每页显示的数量
	private Integer total; // 总数量
	
	private Integer totalPages; // 总页数
	private Integer prePage; // 上一页
	private Integer nextPage; // 下一页
	private Integer startNavPage; // 开始导航页
	private Integer endNavPage; // 结束导航页
	
	private List<T> datas; // 查询的数据列表

	public Page(Integer pageNum, Integer pageSize, Integer total) {
		super();
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.total = total;
		
		// 总页数 (向上取整)
		totalPages = (int) Math.ceil(total * 1.0 / pageSize);
		
		// 上一页 下一页
		prePage = pageNum - 1 < 1 ? 1 : pageNum - 1;
		nextPage = pageNum + 1 > totalPages ? totalPages : pageNum + 1;
		
		// 开始导航页 
		startNavPage = pageNum - 5;
		// 结束导航页
		endNavPage = pageNum + 4;
		
		// 导航开始页最小要从1开始
		if (startNavPage < 1) {
			startNavPage = 1;
			endNavPage = startNavPage + 9 > totalPages ? totalPages : startNavPage + 9;
		}
		// 结束导航页不能大于总页数
		if (endNavPage > totalPages) {
			endNavPage = totalPages;
			startNavPage = endNavPage - 9 < 1 ? 1 : endNavPage -9;
		}
		
	}

	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}

	public Integer getPrePage() {
		return prePage;
	}

	public void setPrePage(Integer prePage) {
		this.prePage = prePage;
	}

	public Integer getNextPage() {
		return nextPage;
	}

	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}

	public Integer getStartNavPage() {
		return startNavPage;
	}

	public void setStartNavPage(Integer startNavPage) {
		this.startNavPage = startNavPage;
	}

	public Integer getEndNavPage() {
		return endNavPage;
	}

	public void setEndNavPage(Integer endNavPage) {
		this.endNavPage = endNavPage;
	}

	public List<T> getDatas() {
		return datas;
	}

	public void setDatas(List<T> datas) {
		this.datas = datas;
	}
	
}
