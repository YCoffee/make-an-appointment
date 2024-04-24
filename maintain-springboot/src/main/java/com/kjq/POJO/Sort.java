package com.kjq.POJO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sort implements Serializable {

    private Integer id;

    private String createTime;

    private Integer sortStatus;

    private String content;

    private static final long serialVersionUID = 1L;
}
